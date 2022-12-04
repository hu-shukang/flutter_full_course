import 'package:get/get.dart';

import '../../pages/main/bindings.dart';
import '../../pages/main/view.dart';
import 'app_route.dart';

class AppPage {
  AppPage._();

  static final List<GetPage> pages = [
    GetPage(
      name: AppRoute.main,
      page: () => const MainPage(),
      binding: MainBindings(),
    ),
  ];
}