import '../../../core/core.dart';
import '../models/models.dart';
import 'location_search_repository.dart';
import 'current_location_data_source.dart';
import 'osm_remote_data_source.dart';
import 'place_mapper.dart';

class LocationSearchRepositoryImpl implements LocationSearchRepository {
  final CurrentLocationDataSource _locationDataSource;
  final OsmRemoteDataSource _remoteDataSource;

  LocationSearchRepositoryImpl({
    required CurrentLocationDataSource locationDataSource,
    required OsmRemoteDataSource remoteDataSource,
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
    final results = await _remoteDataSource.getNearbyLandmarks(coords);
    return results.map(PlaceMapper.mapOsmJsonToPlace).toList();
  }

  @override
  Future<List<PlaceSuggestion>> searchSuggestions(
    String query,
    LocationCoordinates? coords,
  ) async {
    final results = await _remoteDataSource.autocomplete(query, coords);
    return results.map(PlaceMapper.mapOsmJsonToSuggestion).toList();
  }

  @override
  Future<LocationPlace> getPlaceDetails(String placeId) async {
    final json = await _remoteDataSource.getPlaceDetails(placeId);
    return PlaceMapper.mapOsmJsonToPlace(json);
  }
}
