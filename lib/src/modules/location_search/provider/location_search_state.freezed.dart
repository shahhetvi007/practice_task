// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationSearchState {
  String get query => throw _privateConstructorUsedError;
  LocationCoordinates? get currentCoordinates =>
      throw _privateConstructorUsedError;
  List<LocationPlace> get nearbyLocations => throw _privateConstructorUsedError;
  List<PlaceSuggestion> get suggestions => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  LocationPermissionStatus get permissionStatus =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationSearchStateCopyWith<LocationSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSearchStateCopyWith<$Res> {
  factory $LocationSearchStateCopyWith(
          LocationSearchState value, $Res Function(LocationSearchState) then) =
      _$LocationSearchStateCopyWithImpl<$Res, LocationSearchState>;
  @useResult
  $Res call(
      {String query,
      LocationCoordinates? currentCoordinates,
      List<LocationPlace> nearbyLocations,
      List<PlaceSuggestion> suggestions,
      bool isLoading,
      bool isSearching,
      LocationPermissionStatus permissionStatus,
      String? errorMessage});

  $LocationCoordinatesCopyWith<$Res>? get currentCoordinates;
}

/// @nodoc
class _$LocationSearchStateCopyWithImpl<$Res, $Val extends LocationSearchState>
    implements $LocationSearchStateCopyWith<$Res> {
  _$LocationSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? currentCoordinates = freezed,
    Object? nearbyLocations = null,
    Object? suggestions = null,
    Object? isLoading = null,
    Object? isSearching = null,
    Object? permissionStatus = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      currentCoordinates: freezed == currentCoordinates
          ? _value.currentCoordinates
          : currentCoordinates // ignore: cast_nullable_to_non_nullable
              as LocationCoordinates?,
      nearbyLocations: null == nearbyLocations
          ? _value.nearbyLocations
          : nearbyLocations // ignore: cast_nullable_to_non_nullable
              as List<LocationPlace>,
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<PlaceSuggestion>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      permissionStatus: null == permissionStatus
          ? _value.permissionStatus
          : permissionStatus // ignore: cast_nullable_to_non_nullable
              as LocationPermissionStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCoordinatesCopyWith<$Res>? get currentCoordinates {
    if (_value.currentCoordinates == null) {
      return null;
    }

    return $LocationCoordinatesCopyWith<$Res>(_value.currentCoordinates!,
        (value) {
      return _then(_value.copyWith(currentCoordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationSearchStateImplCopyWith<$Res>
    implements $LocationSearchStateCopyWith<$Res> {
  factory _$$LocationSearchStateImplCopyWith(_$LocationSearchStateImpl value,
          $Res Function(_$LocationSearchStateImpl) then) =
      __$$LocationSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      LocationCoordinates? currentCoordinates,
      List<LocationPlace> nearbyLocations,
      List<PlaceSuggestion> suggestions,
      bool isLoading,
      bool isSearching,
      LocationPermissionStatus permissionStatus,
      String? errorMessage});

  @override
  $LocationCoordinatesCopyWith<$Res>? get currentCoordinates;
}

/// @nodoc
class __$$LocationSearchStateImplCopyWithImpl<$Res>
    extends _$LocationSearchStateCopyWithImpl<$Res, _$LocationSearchStateImpl>
    implements _$$LocationSearchStateImplCopyWith<$Res> {
  __$$LocationSearchStateImplCopyWithImpl(_$LocationSearchStateImpl _value,
      $Res Function(_$LocationSearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? currentCoordinates = freezed,
    Object? nearbyLocations = null,
    Object? suggestions = null,
    Object? isLoading = null,
    Object? isSearching = null,
    Object? permissionStatus = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$LocationSearchStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      currentCoordinates: freezed == currentCoordinates
          ? _value.currentCoordinates
          : currentCoordinates // ignore: cast_nullable_to_non_nullable
              as LocationCoordinates?,
      nearbyLocations: null == nearbyLocations
          ? _value._nearbyLocations
          : nearbyLocations // ignore: cast_nullable_to_non_nullable
              as List<LocationPlace>,
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<PlaceSuggestion>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      permissionStatus: null == permissionStatus
          ? _value.permissionStatus
          : permissionStatus // ignore: cast_nullable_to_non_nullable
              as LocationPermissionStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocationSearchStateImpl implements _LocationSearchState {
  const _$LocationSearchStateImpl(
      {this.query = '',
      this.currentCoordinates,
      final List<LocationPlace> nearbyLocations = const [],
      final List<PlaceSuggestion> suggestions = const [],
      this.isLoading = false,
      this.isSearching = false,
      this.permissionStatus = LocationPermissionStatus.unknown,
      this.errorMessage})
      : _nearbyLocations = nearbyLocations,
        _suggestions = suggestions;

  @override
  @JsonKey()
  final String query;
  @override
  final LocationCoordinates? currentCoordinates;
  final List<LocationPlace> _nearbyLocations;
  @override
  @JsonKey()
  List<LocationPlace> get nearbyLocations {
    if (_nearbyLocations is EqualUnmodifiableListView) return _nearbyLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nearbyLocations);
  }

  final List<PlaceSuggestion> _suggestions;
  @override
  @JsonKey()
  List<PlaceSuggestion> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSearching;
  @override
  @JsonKey()
  final LocationPermissionStatus permissionStatus;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LocationSearchState(query: $query, currentCoordinates: $currentCoordinates, nearbyLocations: $nearbyLocations, suggestions: $suggestions, isLoading: $isLoading, isSearching: $isSearching, permissionStatus: $permissionStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationSearchStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.currentCoordinates, currentCoordinates) ||
                other.currentCoordinates == currentCoordinates) &&
            const DeepCollectionEquality()
                .equals(other._nearbyLocations, _nearbyLocations) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.permissionStatus, permissionStatus) ||
                other.permissionStatus == permissionStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      currentCoordinates,
      const DeepCollectionEquality().hash(_nearbyLocations),
      const DeepCollectionEquality().hash(_suggestions),
      isLoading,
      isSearching,
      permissionStatus,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationSearchStateImplCopyWith<_$LocationSearchStateImpl> get copyWith =>
      __$$LocationSearchStateImplCopyWithImpl<_$LocationSearchStateImpl>(
          this, _$identity);
}

abstract class _LocationSearchState implements LocationSearchState {
  const factory _LocationSearchState(
      {final String query,
      final LocationCoordinates? currentCoordinates,
      final List<LocationPlace> nearbyLocations,
      final List<PlaceSuggestion> suggestions,
      final bool isLoading,
      final bool isSearching,
      final LocationPermissionStatus permissionStatus,
      final String? errorMessage}) = _$LocationSearchStateImpl;

  @override
  String get query;
  @override
  LocationCoordinates? get currentCoordinates;
  @override
  List<LocationPlace> get nearbyLocations;
  @override
  List<PlaceSuggestion> get suggestions;
  @override
  bool get isLoading;
  @override
  bool get isSearching;
  @override
  LocationPermissionStatus get permissionStatus;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$LocationSearchStateImplCopyWith<_$LocationSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
