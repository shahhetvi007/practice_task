class AppConstants {
  // Using String.fromEnvironment for better security.
  // Pass this during build: flutter run --dart-define=GOOGLE_MAPS_API_KEY=your_key
  static const String googleApiKey = String.fromEnvironment(
    'GOOGLE_MAP_API_KEY',
    defaultValue: 'PLACEHOLDER_KEY', // Avoid hardcoding the real key here
  );

  static const String osmBaseUrl = 'https://nominatim.openstreetmap.org/';
  static const String userAgent = 'MapSearchLocationsApp/1.0 (hetvi_shah; flutter_app)';
}
