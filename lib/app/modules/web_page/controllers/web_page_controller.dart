import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class WebPageController extends GetxController {
  Future<void> launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
