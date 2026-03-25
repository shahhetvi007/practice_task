// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapViewState {
  LocationPlace get selectedLocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapViewStateCopyWith<MapViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapViewStateCopyWith<$Res> {
  factory $MapViewStateCopyWith(
          MapViewState value, $Res Function(MapViewState) then) =
      _$MapViewStateCopyWithImpl<$Res, MapViewState>;
  @useResult
  $Res call({LocationPlace selectedLocation});

  $LocationPlaceCopyWith<$Res> get selectedLocation;
}

/// @nodoc
class _$MapViewStateCopyWithImpl<$Res, $Val extends MapViewState>
    implements $MapViewStateCopyWith<$Res> {
  _$MapViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocation = null,
  }) {
    return _then(_value.copyWith(
      selectedLocation: null == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as LocationPlace,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationPlaceCopyWith<$Res> get selectedLocation {
    return $LocationPlaceCopyWith<$Res>(_value.selectedLocation, (value) {
      return _then(_value.copyWith(selectedLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MapViewStateImplCopyWith<$Res>
    implements $MapViewStateCopyWith<$Res> {
  factory _$$MapViewStateImplCopyWith(
          _$MapViewStateImpl value, $Res Function(_$MapViewStateImpl) then) =
      __$$MapViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationPlace selectedLocation});

  @override
  $LocationPlaceCopyWith<$Res> get selectedLocation;
}

/// @nodoc
class __$$MapViewStateImplCopyWithImpl<$Res>
    extends _$MapViewStateCopyWithImpl<$Res, _$MapViewStateImpl>
    implements _$$MapViewStateImplCopyWith<$Res> {
  __$$MapViewStateImplCopyWithImpl(
      _$MapViewStateImpl _value, $Res Function(_$MapViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocation = null,
  }) {
    return _then(_$MapViewStateImpl(
      selectedLocation: null == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as LocationPlace,
    ));
  }
}

/// @nodoc

class _$MapViewStateImpl implements _MapViewState {
  const _$MapViewStateImpl({required this.selectedLocation});

  @override
  final LocationPlace selectedLocation;

  @override
  String toString() {
    return 'MapViewState(selectedLocation: $selectedLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapViewStateImpl &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapViewStateImplCopyWith<_$MapViewStateImpl> get copyWith =>
      __$$MapViewStateImplCopyWithImpl<_$MapViewStateImpl>(this, _$identity);
}

abstract class _MapViewState implements MapViewState {
  const factory _MapViewState({required final LocationPlace selectedLocation}) =
      _$MapViewStateImpl;

  @override
  LocationPlace get selectedLocation;
  @override
  @JsonKey(ignore: true)
  _$$MapViewStateImplCopyWith<_$MapViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
