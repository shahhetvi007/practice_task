// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceDetailsDto _$PlaceDetailsDtoFromJson(Map<String, dynamic> json) {
  return _PlaceDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$PlaceDetailsDto {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  Map<String, dynamic>? get displayName => throw _privateConstructorUsedError;
  Map<String, dynamic>? get location => throw _privateConstructorUsedError;
  String? get formattedAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDetailsDtoCopyWith<PlaceDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailsDtoCopyWith<$Res> {
  factory $PlaceDetailsDtoCopyWith(
          PlaceDetailsDto value, $Res Function(PlaceDetailsDto) then) =
      _$PlaceDetailsDtoCopyWithImpl<$Res, PlaceDetailsDto>;
  @useResult
  $Res call(
      {String name,
      String id,
      Map<String, dynamic>? displayName,
      Map<String, dynamic>? location,
      String? formattedAddress});
}

/// @nodoc
class _$PlaceDetailsDtoCopyWithImpl<$Res, $Val extends PlaceDetailsDto>
    implements $PlaceDetailsDtoCopyWith<$Res> {
  _$PlaceDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? displayName = freezed,
    Object? location = freezed,
    Object? formattedAddress = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceDetailsDtoImplCopyWith<$Res>
    implements $PlaceDetailsDtoCopyWith<$Res> {
  factory _$$PlaceDetailsDtoImplCopyWith(_$PlaceDetailsDtoImpl value,
          $Res Function(_$PlaceDetailsDtoImpl) then) =
      __$$PlaceDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      Map<String, dynamic>? displayName,
      Map<String, dynamic>? location,
      String? formattedAddress});
}

/// @nodoc
class __$$PlaceDetailsDtoImplCopyWithImpl<$Res>
    extends _$PlaceDetailsDtoCopyWithImpl<$Res, _$PlaceDetailsDtoImpl>
    implements _$$PlaceDetailsDtoImplCopyWith<$Res> {
  __$$PlaceDetailsDtoImplCopyWithImpl(
      _$PlaceDetailsDtoImpl _value, $Res Function(_$PlaceDetailsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? displayName = freezed,
    Object? location = freezed,
    Object? formattedAddress = freezed,
  }) {
    return _then(_$PlaceDetailsDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value._displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      location: freezed == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceDetailsDtoImpl implements _PlaceDetailsDto {
  const _$PlaceDetailsDtoImpl(
      {required this.name,
      required this.id,
      final Map<String, dynamic>? displayName,
      final Map<String, dynamic>? location,
      this.formattedAddress})
      : _displayName = displayName,
        _location = location;

  factory _$PlaceDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceDetailsDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String id;
  final Map<String, dynamic>? _displayName;
  @override
  Map<String, dynamic>? get displayName {
    final value = _displayName;
    if (value == null) return null;
    if (_displayName is EqualUnmodifiableMapView) return _displayName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _location;
  @override
  Map<String, dynamic>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableMapView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? formattedAddress;

  @override
  String toString() {
    return 'PlaceDetailsDto(name: $name, id: $id, displayName: $displayName, location: $location, formattedAddress: $formattedAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDetailsDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._displayName, _displayName) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      id,
      const DeepCollectionEquality().hash(_displayName),
      const DeepCollectionEquality().hash(_location),
      formattedAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDetailsDtoImplCopyWith<_$PlaceDetailsDtoImpl> get copyWith =>
      __$$PlaceDetailsDtoImplCopyWithImpl<_$PlaceDetailsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaceDetailsDto implements PlaceDetailsDto {
  const factory _PlaceDetailsDto(
      {required final String name,
      required final String id,
      final Map<String, dynamic>? displayName,
      final Map<String, dynamic>? location,
      final String? formattedAddress}) = _$PlaceDetailsDtoImpl;

  factory _PlaceDetailsDto.fromJson(Map<String, dynamic> json) =
      _$PlaceDetailsDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  Map<String, dynamic>? get displayName;
  @override
  Map<String, dynamic>? get location;
  @override
  String? get formattedAddress;
  @override
  @JsonKey(ignore: true)
  _$$PlaceDetailsDtoImplCopyWith<_$PlaceDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TextSearchResponseDto _$TextSearchResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _TextSearchResponseDto.fromJson(json);
}

/// @nodoc
mixin _$TextSearchResponseDto {
  List<PlaceDetailsDto>? get places => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextSearchResponseDtoCopyWith<TextSearchResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextSearchResponseDtoCopyWith<$Res> {
  factory $TextSearchResponseDtoCopyWith(TextSearchResponseDto value,
          $Res Function(TextSearchResponseDto) then) =
      _$TextSearchResponseDtoCopyWithImpl<$Res, TextSearchResponseDto>;
  @useResult
  $Res call({List<PlaceDetailsDto>? places});
}

/// @nodoc
class _$TextSearchResponseDtoCopyWithImpl<$Res,
        $Val extends TextSearchResponseDto>
    implements $TextSearchResponseDtoCopyWith<$Res> {
  _$TextSearchResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = freezed,
  }) {
    return _then(_value.copyWith(
      places: freezed == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceDetailsDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextSearchResponseDtoImplCopyWith<$Res>
    implements $TextSearchResponseDtoCopyWith<$Res> {
  factory _$$TextSearchResponseDtoImplCopyWith(
          _$TextSearchResponseDtoImpl value,
          $Res Function(_$TextSearchResponseDtoImpl) then) =
      __$$TextSearchResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlaceDetailsDto>? places});
}

/// @nodoc
class __$$TextSearchResponseDtoImplCopyWithImpl<$Res>
    extends _$TextSearchResponseDtoCopyWithImpl<$Res,
        _$TextSearchResponseDtoImpl>
    implements _$$TextSearchResponseDtoImplCopyWith<$Res> {
  __$$TextSearchResponseDtoImplCopyWithImpl(_$TextSearchResponseDtoImpl _value,
      $Res Function(_$TextSearchResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = freezed,
  }) {
    return _then(_$TextSearchResponseDtoImpl(
      places: freezed == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceDetailsDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextSearchResponseDtoImpl implements _TextSearchResponseDto {
  const _$TextSearchResponseDtoImpl({final List<PlaceDetailsDto>? places})
      : _places = places;

  factory _$TextSearchResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextSearchResponseDtoImplFromJson(json);

  final List<PlaceDetailsDto>? _places;
  @override
  List<PlaceDetailsDto>? get places {
    final value = _places;
    if (value == null) return null;
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TextSearchResponseDto(places: $places)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextSearchResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextSearchResponseDtoImplCopyWith<_$TextSearchResponseDtoImpl>
      get copyWith => __$$TextSearchResponseDtoImplCopyWithImpl<
          _$TextSearchResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextSearchResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _TextSearchResponseDto implements TextSearchResponseDto {
  const factory _TextSearchResponseDto({final List<PlaceDetailsDto>? places}) =
      _$TextSearchResponseDtoImpl;

  factory _TextSearchResponseDto.fromJson(Map<String, dynamic> json) =
      _$TextSearchResponseDtoImpl.fromJson;

  @override
  List<PlaceDetailsDto>? get places;
  @override
  @JsonKey(ignore: true)
  _$$TextSearchResponseDtoImplCopyWith<_$TextSearchResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
