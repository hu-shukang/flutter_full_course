import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getWidth(BuildContext context) {
    return getSize(context).width;
  }

  static double getHeight(BuildContext context) {
    return getSize(context).height;
  }

  static double getScreenWidth() {
    return Get.width;
  }

  static double getScreenHeight() {
    return Get.height;
  }
}