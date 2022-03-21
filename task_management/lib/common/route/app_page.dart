import 'package:get/get.dart';
import 'package:task_management/common/route/app_route.dart';
import 'package:task_management/pages/home/bindings.dart';
import 'package:task_management/pages/home/view.dart';

class AppPage {
  AppPage._();

  static List<GetPage> pages = [
    GetPage(
      name: AppRoute.HOME,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
  ];
}
