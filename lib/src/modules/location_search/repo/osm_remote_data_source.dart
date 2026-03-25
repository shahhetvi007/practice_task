import '../../../network/osm_api_client.dart';
import '../../../core/core.dart';
import '../models/models.dart';

class OsmRemoteDataSource {
  final OsmApiClient _apiClient;

  OsmRemoteDataSource(this._apiClient);

  Future<List<Map<String, dynamic>>> getNearbyLandmarks(
      LocationCoordinates coords) async {
    final double lat = coords.latitude;
    final double lon = coords.longitude;

    // Use a bounding box to strictly define the search area
    const double delta = 0.05; // ~5km
    final String viewbox =
        '${lon - delta},${lat + delta},${lon + delta},${lat - delta}';

    // Searching for tourism/attractions within the bounded box
    // This is much more reliable than just biasing with lat/lon
    final url =
        '${AppConstants.osmBaseUrl}search?q=attractions&format=json&viewbox=$viewbox&bounded=1&addressdetails=1&limit=15';

    final results = await _apiClient.get(url);

    // Dynamic fallback to ensure the list is never empty
    if (results.isEmpty) {
      // historic: monuments, castles, ruins
      // leisure: parks, scenic lookout
      final fallbackUrl =
          '${AppConstants.osmBaseUrl}search?q=historic,leisure&format=json&viewbox=$viewbox&bounded=1&addressdetails=1&limit=15';
      final fallbackResults = await _apiClient.get(fallbackUrl);

      if (fallbackResults.isEmpty) {
        // amenity: anything else useful like cafés, pharmacies, etc.
        final lastResortUrl =
            '${AppConstants.osmBaseUrl}search?q=amenity&format=json&viewbox=$viewbox&bounded=1&addressdetails=1&limit=10';
        return await _apiClient.get(lastResortUrl);
      }
      return fallbackResults;
    }

    return results;
  }

  Future<List<Map<String, dynamic>>> autocomplete(
      String query, LocationCoordinates? coords) async {
    // We add featuretype=settlement if needed, but for general search we just use q
    final url = StringBuffer(
        '${AppConstants.osmBaseUrl}search?q=$query&format=json&addressdetails=1&limit=15');

    if (coords != null) {
      // Nominatim lat/lon parameters are weak biases.
      // Use a broader viewbox with bounded=0 to create a strong "preference"
      // for local results while still allowing global search.
      const double deltaBias = 1.0; // ~100km radius bias
      final String viewbox =
          '${coords.longitude - deltaBias},${coords.latitude + deltaBias},${coords.longitude + deltaBias},${coords.latitude - deltaBias}';

      url.write('&viewbox=$viewbox&bounded=0');
      // Adding lat/lon as secondary hint
      url.write('&lat=${coords.latitude}&lon=${coords.longitude}');
    }

    return await _apiClient.get(url.toString());
  }

  Future<Map<String, dynamic>> getPlaceDetails(String placeId) async {
    final type = placeId[0].toUpperCase();
    final id = placeId.substring(1);

    final url =
        '${AppConstants.osmBaseUrl}lookup?osm_ids=$type$id&format=json&addressdetails=1';
    final results = await _apiClient.get(url);
    if (results.isNotEmpty) {
      return results.first;
    }
    throw ServerException(
        'Location details not found in OpenStreetMap database.');
  }
}
