import 'package:cubit_app/common/route/app_route.dart';
import 'package:cubit_app/pages/detail/bindings.dart';
import 'package:cubit_app/pages/detail/view.dart';
import 'package:cubit_app/pages/home/bindings.dart';
import 'package:cubit_app/pages/home/view.dart';
import 'package:cubit_app/pages/welcome/bindings.dart';
import 'package:cubit_app/pages/welcome/view.dart';
import 'package:get/get.dart';

class AppPage {
  AppPage._();
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoute.welcome,
      page: () => const WelcomePage(),
      binding: WelcomeBindings(),
    ),
    GetPage(
      name: AppRoute.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: AppRoute.detail,
      page: () => const DetailPage(),
      binding: DetailBindings(),
    ),
  ];
}
