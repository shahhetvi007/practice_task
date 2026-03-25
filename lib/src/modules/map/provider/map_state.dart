import 'package:freezed_annotation/freezed_annotation.dart';
import '../../location_search/models/models.dart';

part 'map_state.freezed.dart';

@freezed
class MapViewState with _$MapViewState {
  const factory MapViewState({
    required LocationPlace selectedLocation,
  }) = _MapViewState;
}
