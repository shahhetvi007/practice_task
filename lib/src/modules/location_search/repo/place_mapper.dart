import '../models/models.dart';

class PlaceMapper {
  // OSM uses 'display_name' which contains the full address.
  // We'll extract the first part as name if 'name' is not present.
  static LocationPlace mapOsmJsonToPlace(Map<String, dynamic> json) {
     final displayName = (json['display_name'] as String?) ?? 'Unnamed';
     final parts = displayName.split(',');
     final name = parts.isNotEmpty ? parts[0] : displayName;

    return LocationPlace(
      placeId: json['place_id']?.toString() ?? json['osm_id'].toString(),
      name: name,
      coordinates: LocationCoordinates(
        latitude: double.parse(json['lat'].toString()),
        longitude: double.parse(json['lon'].toString()),
      ),
      address: displayName,
    );
  }

  static PlaceSuggestion mapOsmJsonToSuggestion(Map<String, dynamic> json) {
    return PlaceSuggestion(
      placeId: '${json['osm_type'].toString().toUpperCase()[0]}${json['osm_id']}', 
      description: json['display_name'] as String,
    );
  }
}
