import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/common/model/side_menu.dart';
import 'package:web_dashboard/page/home/controller.dart';


class SideMenuItem extends StatelessWidget {
  final MapEntry<String, SizeMenuItemModel> entry;
  SideMenuItem({Key? key, required this.entry}) : super(key: key);

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    String key = entry.key;
    SizeMenuItemModel item = entry.value;
    Color black = const Color(0xFF363740);
    return InkWell(
      onTap: () => controller.handleSideMenuItemTap(context, key),
      onHover: (bool hover) => controller.handleSideMenuItemHover(key, hover),
      child: Obx(
        () => Row(
          children: [
            Visibility(
              visible: controller.active == key || controller.hover == key,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: Container(
                width: 6,
                height: 40,
                color: black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
            ),
            Expanded(
              child: Text(
                item.text,
                style: TextStyle(
                  fontSize: 16,
                  color: black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
