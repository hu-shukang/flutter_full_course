import 'package:cubit_app/pages/main/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiscoverTabsView extends StatelessWidget {
  DiscoverTabsView({Key? key}) : super(key: key);
  final MainController controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: const EdgeInsets.only(left: 10, top: 10),
      child: TabBarView(
        controller: controller.tabController,
        children: [
          ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, int index) {
              return Container(
                width: 200,
                height: 300,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage('assets/img/mountain.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
          const Text('Hello0202'),
          const Text('Hello0303'),
        ],
      ),
    );
  }
}
