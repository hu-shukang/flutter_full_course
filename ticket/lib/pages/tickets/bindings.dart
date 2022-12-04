import 'package:get/get.dart';
import 'package:ticket/pages/tickets/controller.dart';

class TicketsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketsController());
  }

}