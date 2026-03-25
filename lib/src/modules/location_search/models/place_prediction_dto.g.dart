// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_prediction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlacePredictionDtoImpl _$$PlacePredictionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PlacePredictionDtoImpl(
      placeId: json['placeId'] as String,
      text: json['text'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$PlacePredictionDtoImplToJson(
        _$PlacePredictionDtoImpl instance) =>
    <String, dynamic>{
      'placeId': instance.placeId,
      'text': instance.text,
    };

_$AutocompleteResponseDtoImpl _$$AutocompleteResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AutocompleteResponseDtoImpl(
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$AutocompleteResponseDtoImplToJson(
        _$AutocompleteResponseDtoImpl instance) =>
    <String, dynamic>{
      'suggestions': instance.suggestions,
    };
