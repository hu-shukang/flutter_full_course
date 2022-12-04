import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/view.dart';

class MainController extends GetxController {
  late final PageController pageController;
  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: selectedIndex);
  }

  void handlePageChange(int index) {
    _selectedIndex.value = index;
  }

  void handleBottomBarItemTap(int index) {
    _selectedIndex.value = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 20),
      curve: Curves.ease
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}