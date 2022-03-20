import 'package:cubit_app/pages/my/controller.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyController());
  }
}