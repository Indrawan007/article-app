import 'package:get/get.dart';

import '../modules/article_page/bindings/article_page_binding.dart';
import '../modules/article_page/views/article_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/web_page/bindings/web_page_binding.dart';
import '../modules/web_page/views/web_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ARTICLE_PAGE,
      page: () => const ArticlePageView(),
      binding: ArticlePageBinding(),
    ),
    GetPage(
      name: _Paths.WEB_PAGE,
      page: () => WebPageView(),
      binding: WebPageBinding(),
    ),
  ];
}
