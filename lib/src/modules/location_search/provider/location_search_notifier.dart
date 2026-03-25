import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/core.dart';
import '../models/models.dart';
import '../repo/location_search_repository.dart';
import 'location_search_state.dart';

part 'location_search_notifier.g.dart';

@riverpod
class LocationSearchController extends _$LocationSearchController {
  late final LocationSearchRepository _repository;

  @override
  LocationSearchState build() {
    _repository = ref.watch(locationSearchRepositoryProvider);

    // Initial load: check permission and fetch location
    Future.microtask(() => init());

    return const LocationSearchState();
  }

  Future<void> init() async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      var permission = await _repository.checkPermission();
      if (permission == LocationPermissionStatus.denied || permission == LocationPermissionStatus.unknown) {
        permission = await _repository.requestPermission();
      }

      state = state.copyWith(permissionStatus: permission);

      if (permission == LocationPermissionStatus.granted) {
        final coords = await _repository.getCurrentLocation();
        
        if (kDebugMode) {
          print('CURRENT LOCATION: Lat: ${coords.latitude}, Lng: ${coords.longitude}');
        }
        
        state = state.copyWith(currentCoordinates: coords);
        await fetchNearbyLandmarks(coords);
      }
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> fetchNearbyLandmarks(LocationCoordinates coords) async {
    try {
      final landmarks = await _repository.getNearbyLandmarks(coords);
      state = state.copyWith(nearbyLocations: landmarks);
    } catch (e) {
      state = state.copyWith(errorMessage: 'Failed to fetch nearby landmarks: $e');
    }
  }

  Future<void> updateQuery(String query) async {
    if (state.query == query) return;
    state = state.copyWith(query: query);

    if (query.isEmpty) {
      state = state.copyWith(suggestions: [], isSearching: false);
      return;
    }

    state = state.copyWith(isSearching: true);
    try {
      final suggestions = await _repository.searchSuggestions(query, state.currentCoordinates);
      state = state.copyWith(suggestions: suggestions);
    } catch (e) {
      state = state.copyWith(errorMessage: 'Search failed: $e');
    } finally {
      state = state.copyWith(isSearching: false);
    }
  }

  Future<LocationPlace?> resolvePlace(String placeId) async {
    try {
      return await _repository.getPlaceDetails(placeId);
    } catch (e) {
      state = state.copyWith(errorMessage: 'Failed to resolve location details: $e');
      return null;
    }
  }
}
