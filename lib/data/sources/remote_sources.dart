import 'dart:convert';

import 'package:galapedia/common/static.dart';
import 'package:http/http.dart' as http;
import 'package:galapedia/data/models/news_model.dart';

abstract class RemoteSource {
  Future<List<NewsModel>> getSpaceNews();
}

class RemoteSourceImpl implements RemoteSource {
  @override
  Future<List<NewsModel>> getSpaceNews() async {
    final response =
        await http.get(Uri.parse('$baseUrl/planetary/apod?api_key=$apiKey'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['data'];
      return jsonResponse.map((e) => NewsModel.fromJson(e)).toList();
    } else {
      throw Exception('Request Error: ${response.statusCode}');
    }
  }
}
