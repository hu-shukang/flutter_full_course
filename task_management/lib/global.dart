import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_management/common/widget/app_bar/controller.dart';

class Global {
  static init() async {
    await GetStorage.init();
    Get.lazyPut(() => AppBarController());
  }
}