import 'package:get/get.dart';
import 'package:task_management/pages/home/controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}