import 'package:cubit_app/common/route/app_route.dart';
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
  ];
}
