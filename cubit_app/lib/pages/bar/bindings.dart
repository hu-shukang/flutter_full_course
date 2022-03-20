import 'package:cubit_app/pages/bar/controller.dart';
import 'package:get/get.dart';

class BarBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BarController());
  }
}