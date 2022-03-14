import 'package:get/get.dart';
import 'package:web_dashboard/common/routing/app_route.dart';
import 'package:web_dashboard/page/home/bindings.dart';
import 'package:web_dashboard/page/home/view.dart';

abstract class AppPage {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoute.initial,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
  ];
}
