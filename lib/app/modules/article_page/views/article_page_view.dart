import 'package:article_app/app/data/model/article_view.dart';
import 'package:article_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/article_page_controller.dart';

final ArticlePageController artikelController =
    Get.put(ArticlePageController());

class ArticlePageView extends GetView<ArticlePageController> {
  const ArticlePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('CNN NEWS'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<ArtikelView>>(
        future: controller.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                ArtikelView artikel = snapshot.data![index];
                print(artikel);
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.WEB_PAGE, arguments: artikel);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey)
                            // borderRadius: BorderRadius.circular(10),
                            // color: Colors.grey,
                            ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.scaleDown,
                                  image:
                                      NetworkImage("${artikel.image!.large}"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${artikel.title}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text("${artikel.contentSnippet}"),
                                  SizedBox(
                                    height: 4,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
