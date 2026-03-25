// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_coordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationCoordinates {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationCoordinatesCopyWith<LocationCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCoordinatesCopyWith<$Res> {
  factory $LocationCoordinatesCopyWith(
          LocationCoordinates value, $Res Function(LocationCoordinates) then) =
      _$LocationCoordinatesCopyWithImpl<$Res, LocationCoordinates>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LocationCoordinatesCopyWithImpl<$Res, $Val extends LocationCoordinates>
    implements $LocationCoordinatesCopyWith<$Res> {
  _$LocationCoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationCoordinatesImplCopyWith<$Res>
    implements $LocationCoordinatesCopyWith<$Res> {
  factory _$$LocationCoordinatesImplCopyWith(_$LocationCoordinatesImpl value,
          $Res Function(_$LocationCoordinatesImpl) then) =
      __$$LocationCoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$LocationCoordinatesImplCopyWithImpl<$Res>
    extends _$LocationCoordinatesCopyWithImpl<$Res, _$LocationCoordinatesImpl>
    implements _$$LocationCoordinatesImplCopyWith<$Res> {
  __$$LocationCoordinatesImplCopyWithImpl(_$LocationCoordinatesImpl _value,
      $Res Function(_$LocationCoordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$LocationCoordinatesImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$LocationCoordinatesImpl implements _LocationCoordinates {
  const _$LocationCoordinatesImpl(
      {required this.latitude, required this.longitude});

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'LocationCoordinates(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationCoordinatesImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationCoordinatesImplCopyWith<_$LocationCoordinatesImpl> get copyWith =>
      __$$LocationCoordinatesImplCopyWithImpl<_$LocationCoordinatesImpl>(
          this, _$identity);
}

abstract class _LocationCoordinates implements LocationCoordinates {
  const factory _LocationCoordinates(
      {required final double latitude,
      required final double longitude}) = _$LocationCoordinatesImpl;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$LocationCoordinatesImplCopyWith<_$LocationCoordinatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
