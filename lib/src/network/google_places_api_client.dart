import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../core/core.dart';

part 'google_places_api_client.g.dart';

@riverpod
GooglePlacesApiClient googlePlacesApiClient(GooglePlacesApiClientRef ref) {
  return GooglePlacesApiClient(http.Client());
}

class GooglePlacesApiClient {
  final http.Client _client;

  GooglePlacesApiClient(this._client);

  Map<String, String> _getHeaders(String url) {
    final headers = {
      'Content-Type': 'application/json',
      'X-Goog-Api-Key': AppConstants.googleApiKey,
    };
    
    // Autocomplete New API (v1) does NOT support X-Goog-FieldMask header at top-level
    // and will return 400 if it is present.
    // searchText and placeDetails DO require it.
    if (!url.contains('autocomplete')) {
      // places.id,places.name,places.displayName,places.location,places.formattedAddress
      // The leading 'places.' is required for list responses like searchText
      // For details, it's just id,name... 
      // Using * is sometimes easier for debugging but specific is better for v1
      headers['X-Goog-FieldMask'] = '*'; 
    }
    
    return headers;
  }

  Future<Map<String, dynamic>> post(String url, Map<String, dynamic> body) async {
    try {
      final response = await _client.post(
        Uri.parse(url),
        headers: _getHeaders(url),
        body: jsonEncode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      if (e is AppException) rethrow;
      throw NetworkException(e.toString());
    }
  }

  Future<Map<String, dynamic>> get(String url) async {
    try {
      final response = await _client.get(
        Uri.parse(url),
        headers: _getHeaders(url),
      );
      return _handleResponse(response);
    } catch (e) {
      if (e is AppException) rethrow;
      throw NetworkException(e.toString());
    }
  }

  Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.body.isEmpty) {
       throw ServerException('Empty response from server: ${response.statusCode}');
    }
    
    final body = jsonDecode(response.body) as Map<String, dynamic>;
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return body;
    } else {
      final message = body['error']?['message'] ?? 'Server error: ${response.statusCode}';
      throw ServerException('API ERROR: $message');
    }
  }
}
