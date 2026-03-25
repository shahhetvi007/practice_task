import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/core.dart';
import '../models/models.dart';
import '../../../network/osm_api_client.dart';
import 'current_location_data_source.dart';
import 'osm_remote_data_source.dart';
import 'location_search_repository_impl.dart';

part 'location_search_repository.g.dart';

@riverpod
LocationSearchRepository locationSearchRepository(LocationSearchRepositoryRef ref) {
  final apiClient = ref.watch(osmApiClientProvider);
  return LocationSearchRepositoryImpl(
    locationDataSource: CurrentLocationDataSource(),
    remoteDataSource: OsmRemoteDataSource(apiClient),
  );
}

abstract class LocationSearchRepository {
  Future<LocationPermissionStatus> checkPermission();
  Future<LocationPermissionStatus> requestPermission();
  Future<LocationCoordinates> getCurrentLocation();
  Future<List<LocationPlace>> getNearbyLandmarks(LocationCoordinates coords);
  Future<List<PlaceSuggestion>> searchSuggestions(String query, LocationCoordinates? coords);
  Future<LocationPlace> getPlaceDetails(String placeId);
}
