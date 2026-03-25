// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceDetailsDtoImpl _$$PlaceDetailsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceDetailsDtoImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      displayName: json['displayName'] as Map<String, dynamic>?,
      location: json['location'] as Map<String, dynamic>?,
      formattedAddress: json['formattedAddress'] as String?,
    );

Map<String, dynamic> _$$PlaceDetailsDtoImplToJson(
        _$PlaceDetailsDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'displayName': instance.displayName,
      'location': instance.location,
      'formattedAddress': instance.formattedAddress,
    };

_$TextSearchResponseDtoImpl _$$TextSearchResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TextSearchResponseDtoImpl(
      places: (json['places'] as List<dynamic>?)
          ?.map((e) => PlaceDetailsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TextSearchResponseDtoImplToJson(
        _$TextSearchResponseDtoImpl instance) =>
    <String, dynamic>{
      'places': instance.places,
    };
