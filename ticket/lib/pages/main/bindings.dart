import 'package:get/get.dart';
import 'package:ticket/pages/home/controller.dart';
import 'package:ticket/pages/profile/controller.dart';
import 'package:ticket/pages/search/controller.dart';
import 'package:ticket/pages/tickets/controller.dart';

import 'controller.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => SearchController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => TicketsController());
  }

}