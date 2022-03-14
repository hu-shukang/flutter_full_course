import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/common/routing/app_route.dart';
import 'package:web_dashboard/page/clients/clients.dart';
import 'package:web_dashboard/page/drivers/drivers.dart';
import 'package:web_dashboard/page/home/controller.dart';
import 'package:web_dashboard/page/overview/overview.dart';

class HomeNestNav extends StatelessWidget {
  HomeNestNav({Key? key}) : super(key: key);
  final controller = Get.find<HomeController>();

  GetPageRoute _getPageRoute(RouteSettings settings, Widget widget) {
    return GetPageRoute(settings: settings, page: () => widget);
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(controller.nestNavKey),
      initialRoute: AppRoute.overview,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoute.overview:
            return _getPageRoute(settings, const OverviewPage());
          case AppRoute.drivers:
            return _getPageRoute(settings, const DriversPage());
          case AppRoute.clients:
            return _getPageRoute(settings, const ClientsPage());
          default:
            return _getPageRoute(settings, const OverviewPage());
        }
      },
    );
  }
}



