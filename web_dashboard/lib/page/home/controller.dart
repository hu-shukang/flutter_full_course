import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/common/model/side_menu.dart';
import 'package:web_dashboard/common/widgets/responsive.dart';

class HomeController extends GetxController {
  static const overview = 'overview';
  static const drivers = 'drivers';
  static const clients = 'clients';

  final nestNavKey = 1;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  final _title = 'Home'.obs;
  String get title => _title.value;

  final _active = overview.obs;
  String get active => _active.value;

  final _hover = ''.obs;
  String get hover => _hover.value;

  final sideMenuMap = <String, SizeMenuItemModel>{
    overview: SizeMenuItemModel('OverView', Icons.trending_up),
    drivers: SizeMenuItemModel('Drivers', Icons.drive_eta),
    clients: SizeMenuItemModel('Clients', Icons.people_alt_outlined),
  };

  void handleSideMenuItemHover(String key, bool hover) {
    if (hover) {
      _hover.value = key;
    } else {
      _hover.value = '';
    }
  }

  void handleSideMenuItemTap(BuildContext context, String key) {
    _active.value = key;
    if (Responsive.isSmallScreen(context)) {
      Get.back();
    }
    Get.toNamed('/$key', id: nestNavKey);
  }
}