import 'package:get/get.dart';
import 'package:shopping/pages/home/bindings.dart';
import 'package:shopping/pages/home/view.dart';

import 'app_route.dart';

class AppPage {
  AppPage._();

  static final List<GetPage> pages = [
    GetPage(
      name: AppRoute.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
  ];
}
