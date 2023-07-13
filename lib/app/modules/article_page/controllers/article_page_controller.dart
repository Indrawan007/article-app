import 'dart:convert';

import 'package:article_app/app/data/model/article_view.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ArticlePageController extends GetxController {
  Future<List<ArtikelView>> fetchData() async {
    final response = await http
        .get(Uri.parse('https://berita-indo-api.vercel.app/v1/cnn-news/'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> artikelJson = data['data'];
      List<ArtikelView> tempList = [];
      artikelJson.forEach((json) {
        tempList.add(ArtikelView.fromJson(json));
      });
      return tempList;
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
