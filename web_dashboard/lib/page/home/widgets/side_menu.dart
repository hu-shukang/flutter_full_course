import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/page/home/controller.dart';
import 'package:web_dashboard/page/home/widgets/side_menu_item.dart';

import '../../../common/model/side_menu.dart';
import '../../../common/style/color.dart';

class SideMenu extends StatelessWidget {
  SideMenu({Key? key}) : super(key: key);
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: 250,
      height: height,
      padding: const EdgeInsets.only(top: 70),
      decoration: BoxDecoration(
        color: AppColor.lightGrey.withOpacity(.1),
      ),
      child: Column(
        children: controller.sideMenuMap.entries.map((e) => SideMenuItem(entry: e)).toList(),
      ),
    );
  }
}
