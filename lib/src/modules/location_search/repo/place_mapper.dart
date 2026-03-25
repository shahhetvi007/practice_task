import '../models/models.dart';

class PlaceMapper {
  static LocationPlace mapDetailsDtoToPlace(PlaceDetailsDto dto) {
    return LocationPlace(
      placeId: dto.id,
      name: (dto.displayName?['text'] as String?) ?? dto.name,
      coordinates: LocationCoordinates(
        latitude: (dto.location?['latitude'] as num).toDouble(),
        longitude: (dto.location?['longitude'] as num).toDouble(),
      ),
      address: dto.formattedAddress,
    );
  }

  static PlaceSuggestion mapPredictionDtoToSuggestion(Map<String, dynamic> suggestionJson) {
    final placePrediction = suggestionJson['placePrediction'] as Map<String, dynamic>;
    return PlaceSuggestion(
      placeId: placePrediction['placeId'] as String,
      description: (placePrediction['text']?['text'] as String?) ?? 'Unnamed Place',
    );
  }
}
