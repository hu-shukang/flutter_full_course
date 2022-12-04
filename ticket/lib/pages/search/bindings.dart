import 'package:get/get.dart';
import 'package:ticket/pages/search/controller.dart';

class SearchBindings extends Bindings {
  @override
  void dependencies() {
    return Get.lazyPut(() => SearchController());
  }

}