import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/pages/profile/view.dart';
import 'package:ticket/pages/search/view.dart';
import 'package:ticket/pages/tickets/view.dart';

import '../home/view.dart';
import 'controller.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: controller.handlePageChange,
        children: const [
          HomePage(),
          SearchPage(),
          TicketsPage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            onTap: controller.handleBottomBarItemTap,
            currentIndex: controller.selectedIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                  label: "Ticket"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                  label: "Profile"),
            ],
          )
      ),
    );
  }

}