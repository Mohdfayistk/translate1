





import 'dart:convert';

import 'package:http/http.dart';

import '../modelclass/translate1.dart';
import 'api_client.dart';




class AnimeApi {
  ApiClient apiClient = ApiClient();


  Future<Translate1> getAnime(String text) async {
    String trendingpath = 'https://text-translator2.p.rapidapi.com/translate';
    var body = {
      'source_language': 'en',
      'target_language':'ml',
      'text':text,
    };
    Response response = await apiClient.invokeAPI(trendingpath, 'POST', body);

    return Translate1.fromJson(jsonDecode(response.body));
  }
}