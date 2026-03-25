import '../core/app_constants.dart';

class GooglePlacesEndpoints {
  static String searchText() => '${AppConstants.googlePlacesBaseUrl}places:searchText';
  
  static String autocomplete() => '${AppConstants.googlePlacesBaseUrl}places:autocomplete';
  
  static String placeDetails(String placeId) => '${AppConstants.googlePlacesBaseUrl}places/$placeId';
}
