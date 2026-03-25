import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../core/core.dart';

part 'osm_api_client.g.dart';

@riverpod
OsmApiClient osmApiClient(OsmApiClientRef ref) {
  return OsmApiClient(http.Client());
}

class OsmApiClient {
  final http.Client _client;

  OsmApiClient(this._client);

  Map<String, String> get _headers => {
        'User-Agent': AppConstants.userAgent,
        'Accept-Language': 'en',
      };

  Future<List<Map<String, dynamic>>> get(String url) async {
    try {
      final response = await _client.get(
        Uri.parse(url),
        headers: _headers,
      );
      
      if (response.statusCode >= 200 && response.statusCode < 300) {
        final data = jsonDecode(response.body);
        if (data is List) {
          return data.cast<Map<String, dynamic>>();
        } else if (data is Map) {
           return [data.cast<String, dynamic>()];
        } else {
          return [];
        }
      } else {
        throw ServerException('OSM API ERROR: ${response.statusCode} - ${response.reasonPhrase}');
      }
    } catch (e) {
      if (e is AppException) rethrow;
      throw NetworkException('Connection failed: $e');
    }
  }
}
