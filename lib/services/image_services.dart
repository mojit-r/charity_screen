import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class ImageServices {
  final String accessKey = dotenv.env['UNSPLASH_KEY'] ?? '';

  Future<List<String>> fetchImages(String query, {int perPage = 5}) async {
    final url = Uri.parse(
      'https://api.unsplash.com/search/photos?query=$query&per_page=$perPage',
    );

    final response = await http.get(
      url,
      headers: {'Authorization': 'Client-ID $accessKey'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      List results = data['results'];
      return results.map<String>((img) => img['urls']['regular']).toList();
    } else {
      throw Exception('Failed to load images');
    }
  }
}
