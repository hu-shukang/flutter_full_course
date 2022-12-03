import 'package:flutter/material.dart';

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
}