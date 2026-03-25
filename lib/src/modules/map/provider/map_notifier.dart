import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../location_search/models/models.dart';
import 'map_state.dart';

part 'map_notifier.g.dart';

@riverpod
class MapViewController extends _$MapViewController {
  @override
  MapViewState build(LocationPlace selectedLocation) {
    return MapViewState(selectedLocation: selectedLocation);
  }
}
