import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  static const appBarScrollOffset = 10;

  final _people = 1.obs;
  int get people => _people.value;
  set people(int value) => _people.value = value;

  final _appBarAlpha = Rx<double>(0);
  double get appBarAlpha => _appBarAlpha.value;
  set appBarAlpha(double value) => _appBarAlpha.value = value;

  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      double offset = scrollController.offset;
      double alpha = 0;
      if (offset > 300) {
        alpha = (offset - 300) / appBarScrollOffset;
      } else {
        alpha = 0;
      }
      if (alpha < 0) {
        alpha = 0;
      } else if (alpha > 1) {
        alpha = 1;
      }
      appBarAlpha = alpha;
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}