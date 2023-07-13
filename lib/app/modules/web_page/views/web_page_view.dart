import 'package:article_app/app/data/model/article_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'package:get/get.dart';

import '../controllers/web_page_controller.dart';

class WebPageView extends GetView<WebPageController> {
  final ArtikelView url = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Website CNN'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: InAppWebView(
              initialUrlRequest: URLRequest(url: Uri.parse("${url.link}")),
              onProgressChanged: (controller, progress) {
                // Update loading progress.
              },
            ),
          ),
        ],
      ),
    );
  }
}
