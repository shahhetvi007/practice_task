import '../../../network/google_places_api_client.dart';
import '../../../network/google_places_endpoints.dart';
import '../models/models.dart';

class GooglePlacesRemoteDataSource {
  final GooglePlacesApiClient _apiClient;

  GooglePlacesRemoteDataSource(this._apiClient);

  Future<List<PlaceDetailsDto>> getNearbyLandmarks(LocationCoordinates coords) async {
    final response = await _apiClient.post(
      GooglePlacesEndpoints.searchText(),
      {
        'textQuery': 'landmarks near me',
        'locationBias': {
          'circle': {
            'center': {
              'latitude': coords.latitude,
              'longitude': coords.longitude,
            },
            'radius': 5000.0,
          }
        }
      },
    );
    return (response['places'] as List?)
            ?.map((e) => PlaceDetailsDto.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [];
  }

  Future<List<Map<String, dynamic>>> autocomplete(String query, LocationCoordinates? coords) async {
    final body = <String, dynamic>{
      'input': query,
    };
    if (coords != null) {
      body['locationBias'] = {
        'circle': {
          'center': {
            'latitude': coords.latitude,
            'longitude': coords.longitude,
          },
          'radius': 10000.0,
        }
      };
    }
    final response = await _apiClient.post(GooglePlacesEndpoints.autocomplete(), body);
    return (response['suggestions'] as List?)?.cast<Map<String, dynamic>>() ?? [];
  }

  Future<PlaceDetailsDto> getPlaceDetails(String placeId) async {
    final response = await _apiClient.get(GooglePlacesEndpoints.placeDetails(placeId));
    return PlaceDetailsDto.fromJson(response);
  }
}
