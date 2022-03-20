import 'package:cubit_app/common/styles/text.dart';
import 'package:cubit_app/common/widgets/expanded.dart';
import 'package:cubit_app/common/widgets/scaffold_body.dart';
import 'package:cubit_app/pages/main/controller.dart';
import 'package:cubit_app/pages/main/widgets/discover_tabs.dart';
import 'package:cubit_app/pages/main/widgets/discover_tabs_view.dart';
import 'package:cubit_app/pages/main/widgets/explore_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: controller.handleMenuTap,
                  icon: const Icon(Icons.menu),
                ),
                expanded(),
                Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                )
              ],
            ),
            scaffoldBody(
              child: pageTitle(text: 'Discover'),
            ),
            const SizedBox(height: 30,),
            DiscoverTabs(),
            DiscoverTabsView(),
            scaffoldBody(
              topPadding: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  pageTitle(text: 'Explore more', size: 22,),
                  contentText(text: 'See all'),
                ],
              ),
            ),
            scaffoldBody(
              topPadding: 20,
              child: ExploreList(),
            ),
          ],
        ),
      ),
    );
  }
}
