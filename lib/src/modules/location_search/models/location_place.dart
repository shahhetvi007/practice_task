import 'package:freezed_annotation/freezed_annotation.dart';
import 'location_coordinates.dart';

part 'location_place.freezed.dart';

@freezed
class LocationPlace with _$LocationPlace {
  const factory LocationPlace({
    required String placeId,
    required String name,
    required LocationCoordinates coordinates,
    String? address,
  }) = _LocationPlace;
}
