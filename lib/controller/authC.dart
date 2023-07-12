import 'dart:convert';

import 'package:article_app/model/article.dart';
import 'package:http/http.dart' as http;

class AuthC {
  Future<Article> fetchArticle() async {
    final response = await http
        .get(Uri.parse('https://saurav.tech/NewsAPI/everything/cnn.json'));

    if (response.statusCode == 200) {
      return Article.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load article');
    }
  }
}
