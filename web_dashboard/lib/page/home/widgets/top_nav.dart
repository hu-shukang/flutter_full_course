import 'package:flutter/material.dart';
import 'package:web_dashboard/common/style/color.dart';
import 'package:web_dashboard/common/widgets/responsive.dart';

AppBar topNav(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    leading: Responsive.isSmallScreen(context)
        ? IconButton(
            onPressed: () {
              key.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          )
        : Container(
            alignment: Alignment.center,
            child: const Text(
              'LOGO',
              style: TextStyle(
                color: AppColor.primaryText,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
    title: const Text('Home'),
  );
}
