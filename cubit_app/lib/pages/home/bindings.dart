import 'package:cubit_app/pages/bar/controller.dart';
import 'package:cubit_app/pages/home/controller.dart';
import 'package:cubit_app/pages/main/controller.dart';
import 'package:cubit_app/pages/my/controller.dart';
import 'package:cubit_app/pages/search/controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => BarController());
    Get.lazyPut(() => MyController());
    Get.lazyPut(() => SearchController());
  }
}