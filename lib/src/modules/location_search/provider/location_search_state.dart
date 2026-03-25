import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/core.dart';
import '../models/models.dart';

part 'location_search_state.freezed.dart';

@freezed
class LocationSearchState with _$LocationSearchState {
  const factory LocationSearchState({
    @Default('') String query,
    LocationCoordinates? currentCoordinates,
    @Default([]) List<LocationPlace> nearbyLocations,
    @Default([]) List<PlaceSuggestion> suggestions,
    @Default(false) bool isLoading,
    @Default(false) bool isSearching,
    @Default(LocationPermissionStatus.unknown) LocationPermissionStatus permissionStatus,
    String? errorMessage,
  }) = _LocationSearchState;
}
