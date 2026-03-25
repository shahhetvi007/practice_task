import 'package:geolocator/geolocator.dart';
import '../../../core/core.dart';
import '../models/models.dart';

class CurrentLocationDataSource {
  Future<LocationPermissionStatus> getPermissionStatus() async {
    final status = await Geolocator.checkPermission();
    return _mapGeolocatorPermission(status);
  }

  Future<LocationPermissionStatus> requestPermission() async {
    final status = await Geolocator.requestPermission();
    return _mapGeolocatorPermission(status);
  }

  Future<LocationCoordinates> getCurrentLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      return LocationCoordinates(
        latitude: position.latitude,
        longitude: position.longitude,
      );
    } catch (e) {
      throw LocationPermissionException('Could not get current position');
    }
  }

  LocationPermissionStatus _mapGeolocatorPermission(LocationPermission status) {
    switch (status) {
      case LocationPermission.always:
      case LocationPermission.whileInUse:
        return LocationPermissionStatus.granted;
      case LocationPermission.denied:
        return LocationPermissionStatus.denied;
      case LocationPermission.deniedForever:
        return LocationPermissionStatus.deniedForever;
      case LocationPermission.unableToDetermine:
        return LocationPermissionStatus.unknown;
    }
  }
}
