// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mapViewControllerHash() => r'6d82a6a0e3cdbaa25118166ecca7a78319d04e32';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$MapViewController
    extends BuildlessAutoDisposeNotifier<MapViewState> {
  late final LocationPlace selectedLocation;

  MapViewState build(
    LocationPlace selectedLocation,
  );
}

/// See also [MapViewController].
@ProviderFor(MapViewController)
const mapViewControllerProvider = MapViewControllerFamily();

/// See also [MapViewController].
class MapViewControllerFamily extends Family<MapViewState> {
  /// See also [MapViewController].
  const MapViewControllerFamily();

  /// See also [MapViewController].
  MapViewControllerProvider call(
    LocationPlace selectedLocation,
  ) {
    return MapViewControllerProvider(
      selectedLocation,
    );
  }

  @override
  MapViewControllerProvider getProviderOverride(
    covariant MapViewControllerProvider provider,
  ) {
    return call(
      provider.selectedLocation,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'mapViewControllerProvider';
}

/// See also [MapViewController].
class MapViewControllerProvider
    extends AutoDisposeNotifierProviderImpl<MapViewController, MapViewState> {
  /// See also [MapViewController].
  MapViewControllerProvider(
    LocationPlace selectedLocation,
  ) : this._internal(
          () => MapViewController()..selectedLocation = selectedLocation,
          from: mapViewControllerProvider,
          name: r'mapViewControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mapViewControllerHash,
          dependencies: MapViewControllerFamily._dependencies,
          allTransitiveDependencies:
              MapViewControllerFamily._allTransitiveDependencies,
          selectedLocation: selectedLocation,
        );

  MapViewControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.selectedLocation,
  }) : super.internal();

  final LocationPlace selectedLocation;

  @override
  MapViewState runNotifierBuild(
    covariant MapViewController notifier,
  ) {
    return notifier.build(
      selectedLocation,
    );
  }

  @override
  Override overrideWith(MapViewController Function() create) {
    return ProviderOverride(
      origin: this,
      override: MapViewControllerProvider._internal(
        () => create()..selectedLocation = selectedLocation,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        selectedLocation: selectedLocation,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<MapViewController, MapViewState>
      createElement() {
    return _MapViewControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MapViewControllerProvider &&
        other.selectedLocation == selectedLocation;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, selectedLocation.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MapViewControllerRef on AutoDisposeNotifierProviderRef<MapViewState> {
  /// The parameter `selectedLocation` of this provider.
  LocationPlace get selectedLocation;
}

class _MapViewControllerProviderElement
    extends AutoDisposeNotifierProviderElement<MapViewController, MapViewState>
    with MapViewControllerRef {
  _MapViewControllerProviderElement(super.provider);

  @override
  LocationPlace get selectedLocation =>
      (origin as MapViewControllerProvider).selectedLocation;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
