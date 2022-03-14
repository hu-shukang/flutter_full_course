import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/common/routing/home_nest_nav.dart';
import 'package:web_dashboard/common/widgets/responsive.dart';
import 'package:web_dashboard/page/home/controller.dart';
import 'package:web_dashboard/page/home/widgets/large_screen.dart';
import 'package:web_dashboard/page/home/widgets/side_menu.dart';
import 'package:web_dashboard/page/home/widgets/small_screen.dart';
import 'package:web_dashboard/page/home/widgets/top_nav.dart';


class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: topNav(context, controller.scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: const Responsive(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
