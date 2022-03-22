import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_management/common/controller/NotifyController.dart';
import 'package:task_management/common/widget/app_bar/controller.dart';

class Global {
  static init() async {
    // init GetStorage
    await GetStorage.init();

    // init NotifyController
    final notifyController = NotifyController();
    await notifyController.initNotification();
    Get.lazyPut(() => notifyController);

    // init AppBarController
    Get.lazyPut(() => AppBarController());
  }


}