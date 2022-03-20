import 'package:cubit_app/pages/bar/view.dart';
import 'package:cubit_app/pages/home/controller.dart';
import 'package:cubit_app/pages/main/view.dart';
import 'package:cubit_app/pages/my/view.dart';
import 'package:cubit_app/pages/search/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  BottomNavigationBarItem _buildNavBarItem(IconData iconData, String label) {
    return BottomNavigationBarItem(
      icon: Icon(iconData),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: controller.handlePageChange,
        children: const [
          MainPage(),
          BarPage(),
          SearchPage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex,
          onTap: controller.handleBottomBarItemTap,
          items: [
            _buildNavBarItem(Icons.apps, 'Home'),
            _buildNavBarItem(Icons.bar_chart_sharp, 'Bar'),
            _buildNavBarItem(Icons.search, 'Search'),
            _buildNavBarItem(Icons.person, 'My'),
          ],
        ),
      ),
    );
  }
}
