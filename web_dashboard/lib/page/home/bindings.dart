import 'package:get/get.dart';
import 'package:web_dashboard/page/home/controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}