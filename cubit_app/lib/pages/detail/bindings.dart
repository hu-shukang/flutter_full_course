import 'package:cubit_app/pages/detail/controller.dart';
import 'package:get/get.dart';

class DetailBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}