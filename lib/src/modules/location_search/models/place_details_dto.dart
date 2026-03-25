import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_details_dto.freezed.dart';
part 'place_details_dto.g.dart';

@freezed
class PlaceDetailsDto with _$PlaceDetailsDto {
  const factory PlaceDetailsDto({
    required String name,
    required String id,
    Map<String, dynamic>? displayName,
    Map<String, dynamic>? location,
    String? formattedAddress,
  }) = _PlaceDetailsDto;

  factory PlaceDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsDtoFromJson(json);
}

@freezed
class TextSearchResponseDto with _$TextSearchResponseDto {
  const factory TextSearchResponseDto({
    List<PlaceDetailsDto>? places,
  }) = _TextSearchResponseDto;

  factory TextSearchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TextSearchResponseDtoFromJson(json);
}
