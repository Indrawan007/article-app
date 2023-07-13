import 'dart:convert';

import 'package:article_app/app/data/model/article.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  Future<Artikel> fetchData() async {
    final response =
        await http.get(Uri.parse('https://berita-indo-api.vercel.app'));
    print(response.body);
    if (response.statusCode == 200) {
      return Artikel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
