import 'package:cubit_app/common/widgets/scaffold_body.dart';
import 'package:cubit_app/pages/home/controller.dart';
import 'package:cubit_app/pages/main/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiscoverTabs extends StatelessWidget {
  DiscoverTabs({Key? key}) : super(key: key);
  final MainController controller = Get.find<MainController>();

  Tab _buildTab(int index) {
    return Tab(
      text: controller.tabTitleList[index],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TabBar(
        controller: controller.tabController,
        isScrollable: true,
        tabs: List.generate(
          controller.tabTitleList.length,
          _buildTab,
        ),
      ),
    );
  }
}
