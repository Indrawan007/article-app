import 'package:article_app/app/data/model/article.dart';
import 'package:article_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<Artikel>(
          future: controller.fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final artikel = snapshot.data!;
              print(artikel);
              return Column(
                children: [
                  Text('Author: ${artikel.author ?? 'N/A'}'),
                  Text('Source: ${artikel.source ?? 'N/A'}'),
                  GestureDetector(
                      onTap: () => Get.toNamed(Routes.ARTICLE_PAGE),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(color: Colors.black),
                        child: Text("${artikel.listApi!.republikaNews!.all}"),
                      ))
                ],
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
