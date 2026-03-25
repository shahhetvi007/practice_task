import '../../../core/core.dart';
import '../models/models.dart';
import 'location_search_repository.dart';
import 'current_location_data_source.dart';
import 'google_places_remote_data_source.dart';
import 'place_mapper.dart';

class LocationSearchRepositoryImpl implements LocationSearchRepository {
  final CurrentLocationDataSource _locationDataSource;
  final GooglePlacesRemoteDataSource _remoteDataSource;

  LocationSearchRepositoryImpl({
    required CurrentLocationDataSource locationDataSource,
    required GooglePlacesRemoteDataSource remoteDataSource,
  })  : _locationDataSource = locationDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<LocationPermissionStatus> checkPermission() => _locationDataSource.getPermissionStatus();

  @override
  Future<LocationPermissionStatus> requestPermission() => _locationDataSource.requestPermission();

  @override
  Future<LocationCoordinates> getCurrentLocation() => _locationDataSource.getCurrentLocation();

  @override
  Future<List<LocationPlace>> getNearbyLandmarks(LocationCoordinates coords) async {
    final dtos = await _remoteDataSource.getNearbyLandmarks(coords);
    return dtos.map(PlaceMapper.mapDetailsDtoToPlace).toList();
  }

  @override
  Future<List<PlaceSuggestion>> searchSuggestions(
    String query,
    LocationCoordinates? coords,
  ) async {
    final suggestionsJson = await _remoteDataSource.autocomplete(query, coords);
    return suggestionsJson.map(PlaceMapper.mapPredictionDtoToSuggestion).toList();
  }

  @override
  Future<LocationPlace> getPlaceDetails(String placeId) async {
    final dto = await _remoteDataSource.getPlaceDetails(placeId);
    return PlaceMapper.mapDetailsDtoToPlace(dto);
  }
}
