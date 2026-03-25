// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_prediction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlacePredictionDto _$PlacePredictionDtoFromJson(Map<String, dynamic> json) {
  return _PlacePredictionDto.fromJson(json);
}

/// @nodoc
mixin _$PlacePredictionDto {
  String get placeId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacePredictionDtoCopyWith<PlacePredictionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacePredictionDtoCopyWith<$Res> {
  factory $PlacePredictionDtoCopyWith(
          PlacePredictionDto value, $Res Function(PlacePredictionDto) then) =
      _$PlacePredictionDtoCopyWithImpl<$Res, PlacePredictionDto>;
  @useResult
  $Res call({String placeId, Map<String, dynamic>? text});
}

/// @nodoc
class _$PlacePredictionDtoCopyWithImpl<$Res, $Val extends PlacePredictionDto>
    implements $PlacePredictionDtoCopyWith<$Res> {
  _$PlacePredictionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlacePredictionDtoImplCopyWith<$Res>
    implements $PlacePredictionDtoCopyWith<$Res> {
  factory _$$PlacePredictionDtoImplCopyWith(_$PlacePredictionDtoImpl value,
          $Res Function(_$PlacePredictionDtoImpl) then) =
      __$$PlacePredictionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String placeId, Map<String, dynamic>? text});
}

/// @nodoc
class __$$PlacePredictionDtoImplCopyWithImpl<$Res>
    extends _$PlacePredictionDtoCopyWithImpl<$Res, _$PlacePredictionDtoImpl>
    implements _$$PlacePredictionDtoImplCopyWith<$Res> {
  __$$PlacePredictionDtoImplCopyWithImpl(_$PlacePredictionDtoImpl _value,
      $Res Function(_$PlacePredictionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? text = freezed,
  }) {
    return _then(_$PlacePredictionDtoImpl(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      text: freezed == text
          ? _value._text
          : text // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlacePredictionDtoImpl implements _PlacePredictionDto {
  const _$PlacePredictionDtoImpl(
      {required this.placeId, final Map<String, dynamic>? text})
      : _text = text;

  factory _$PlacePredictionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlacePredictionDtoImplFromJson(json);

  @override
  final String placeId;
  final Map<String, dynamic>? _text;
  @override
  Map<String, dynamic>? get text {
    final value = _text;
    if (value == null) return null;
    if (_text is EqualUnmodifiableMapView) return _text;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'PlacePredictionDto(placeId: $placeId, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacePredictionDtoImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            const DeepCollectionEquality().equals(other._text, _text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, placeId, const DeepCollectionEquality().hash(_text));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacePredictionDtoImplCopyWith<_$PlacePredictionDtoImpl> get copyWith =>
      __$$PlacePredictionDtoImplCopyWithImpl<_$PlacePredictionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlacePredictionDtoImplToJson(
      this,
    );
  }
}

abstract class _PlacePredictionDto implements PlacePredictionDto {
  const factory _PlacePredictionDto(
      {required final String placeId,
      final Map<String, dynamic>? text}) = _$PlacePredictionDtoImpl;

  factory _PlacePredictionDto.fromJson(Map<String, dynamic> json) =
      _$PlacePredictionDtoImpl.fromJson;

  @override
  String get placeId;
  @override
  Map<String, dynamic>? get text;
  @override
  @JsonKey(ignore: true)
  _$$PlacePredictionDtoImplCopyWith<_$PlacePredictionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AutocompleteResponseDto _$AutocompleteResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _AutocompleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$AutocompleteResponseDto {
  List<Map<String, dynamic>>? get suggestions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutocompleteResponseDtoCopyWith<AutocompleteResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutocompleteResponseDtoCopyWith<$Res> {
  factory $AutocompleteResponseDtoCopyWith(AutocompleteResponseDto value,
          $Res Function(AutocompleteResponseDto) then) =
      _$AutocompleteResponseDtoCopyWithImpl<$Res, AutocompleteResponseDto>;
  @useResult
  $Res call({List<Map<String, dynamic>>? suggestions});
}

/// @nodoc
class _$AutocompleteResponseDtoCopyWithImpl<$Res,
        $Val extends AutocompleteResponseDto>
    implements $AutocompleteResponseDtoCopyWith<$Res> {
  _$AutocompleteResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = freezed,
  }) {
    return _then(_value.copyWith(
      suggestions: freezed == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutocompleteResponseDtoImplCopyWith<$Res>
    implements $AutocompleteResponseDtoCopyWith<$Res> {
  factory _$$AutocompleteResponseDtoImplCopyWith(
          _$AutocompleteResponseDtoImpl value,
          $Res Function(_$AutocompleteResponseDtoImpl) then) =
      __$$AutocompleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>>? suggestions});
}

/// @nodoc
class __$$AutocompleteResponseDtoImplCopyWithImpl<$Res>
    extends _$AutocompleteResponseDtoCopyWithImpl<$Res,
        _$AutocompleteResponseDtoImpl>
    implements _$$AutocompleteResponseDtoImplCopyWith<$Res> {
  __$$AutocompleteResponseDtoImplCopyWithImpl(
      _$AutocompleteResponseDtoImpl _value,
      $Res Function(_$AutocompleteResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = freezed,
  }) {
    return _then(_$AutocompleteResponseDtoImpl(
      suggestions: freezed == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutocompleteResponseDtoImpl implements _AutocompleteResponseDto {
  const _$AutocompleteResponseDtoImpl(
      {final List<Map<String, dynamic>>? suggestions})
      : _suggestions = suggestions;

  factory _$AutocompleteResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutocompleteResponseDtoImplFromJson(json);

  final List<Map<String, dynamic>>? _suggestions;
  @override
  List<Map<String, dynamic>>? get suggestions {
    final value = _suggestions;
    if (value == null) return null;
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AutocompleteResponseDto(suggestions: $suggestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutocompleteResponseDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_suggestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutocompleteResponseDtoImplCopyWith<_$AutocompleteResponseDtoImpl>
      get copyWith => __$$AutocompleteResponseDtoImplCopyWithImpl<
          _$AutocompleteResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutocompleteResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _AutocompleteResponseDto implements AutocompleteResponseDto {
  const factory _AutocompleteResponseDto(
          {final List<Map<String, dynamic>>? suggestions}) =
      _$AutocompleteResponseDtoImpl;

  factory _AutocompleteResponseDto.fromJson(Map<String, dynamic> json) =
      _$AutocompleteResponseDtoImpl.fromJson;

  @override
  List<Map<String, dynamic>>? get suggestions;
  @override
  @JsonKey(ignore: true)
  _$$AutocompleteResponseDtoImplCopyWith<_$AutocompleteResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
