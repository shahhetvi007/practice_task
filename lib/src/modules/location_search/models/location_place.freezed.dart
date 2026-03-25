// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationPlace {
  String get placeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  LocationCoordinates get coordinates => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationPlaceCopyWith<LocationPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPlaceCopyWith<$Res> {
  factory $LocationPlaceCopyWith(
          LocationPlace value, $Res Function(LocationPlace) then) =
      _$LocationPlaceCopyWithImpl<$Res, LocationPlace>;
  @useResult
  $Res call(
      {String placeId,
      String name,
      LocationCoordinates coordinates,
      String? address});

  $LocationCoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$LocationPlaceCopyWithImpl<$Res, $Val extends LocationPlace>
    implements $LocationPlaceCopyWith<$Res> {
  _$LocationPlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? name = null,
    Object? coordinates = null,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LocationCoordinates,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCoordinatesCopyWith<$Res> get coordinates {
    return $LocationCoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationPlaceImplCopyWith<$Res>
    implements $LocationPlaceCopyWith<$Res> {
  factory _$$LocationPlaceImplCopyWith(
          _$LocationPlaceImpl value, $Res Function(_$LocationPlaceImpl) then) =
      __$$LocationPlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String placeId,
      String name,
      LocationCoordinates coordinates,
      String? address});

  @override
  $LocationCoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$$LocationPlaceImplCopyWithImpl<$Res>
    extends _$LocationPlaceCopyWithImpl<$Res, _$LocationPlaceImpl>
    implements _$$LocationPlaceImplCopyWith<$Res> {
  __$$LocationPlaceImplCopyWithImpl(
      _$LocationPlaceImpl _value, $Res Function(_$LocationPlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? name = null,
    Object? coordinates = null,
    Object? address = freezed,
  }) {
    return _then(_$LocationPlaceImpl(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LocationCoordinates,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocationPlaceImpl implements _LocationPlace {
  const _$LocationPlaceImpl(
      {required this.placeId,
      required this.name,
      required this.coordinates,
      this.address});

  @override
  final String placeId;
  @override
  final String name;
  @override
  final LocationCoordinates coordinates;
  @override
  final String? address;

  @override
  String toString() {
    return 'LocationPlace(placeId: $placeId, name: $name, coordinates: $coordinates, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPlaceImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, placeId, name, coordinates, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationPlaceImplCopyWith<_$LocationPlaceImpl> get copyWith =>
      __$$LocationPlaceImplCopyWithImpl<_$LocationPlaceImpl>(this, _$identity);
}

abstract class _LocationPlace implements LocationPlace {
  const factory _LocationPlace(
      {required final String placeId,
      required final String name,
      required final LocationCoordinates coordinates,
      final String? address}) = _$LocationPlaceImpl;

  @override
  String get placeId;
  @override
  String get name;
  @override
  LocationCoordinates get coordinates;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$LocationPlaceImplCopyWith<_$LocationPlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
