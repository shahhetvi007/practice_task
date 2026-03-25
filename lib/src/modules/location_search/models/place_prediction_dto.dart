import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_prediction_dto.freezed.dart';
part 'place_prediction_dto.g.dart';

@freezed
class PlacePredictionDto with _$PlacePredictionDto {
  const factory PlacePredictionDto({
    required String placeId,
    Map<String, dynamic>? text,
  }) = _PlacePredictionDto;

  factory PlacePredictionDto.fromJson(Map<String, dynamic> json) =>
      _$PlacePredictionDtoFromJson(json);
}

@freezed
class AutocompleteResponseDto with _$AutocompleteResponseDto {
  const factory AutocompleteResponseDto({
    List<Map<String, dynamic>>? suggestions,
  }) = _AutocompleteResponseDto;

  factory AutocompleteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseDtoFromJson(json);
}
