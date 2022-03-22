import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management/common/widget/app_bar/controller.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final _appBarController = Get.find<AppBarController>();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
        onTap: () {
          _appBarController.switchTheme();
        },
        child: const Icon(
          Icons.nightlight_round,
          size: 20,
        ),
      ),
      actions: [
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.person,
            size: 20,
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
