import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_coordinates.freezed.dart';

@freezed
class LocationCoordinates with _$LocationCoordinates {
  const factory LocationCoordinates({
    required double latitude,
    required double longitude,
  }) = _LocationCoordinates;
}
