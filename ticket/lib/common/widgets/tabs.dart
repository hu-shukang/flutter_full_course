import 'package:flutter/material.dart';
import 'package:ticket/common/style/color.dart';

class Tabs extends StatelessWidget {
  final TabController tabController;
  final List<String> titles;
  const Tabs({Key? key, required this.tabController, required this.titles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
      ),
      child: TabBar(
          controller: tabController,
          indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          labelColor: AppColor.textColor,
          tabs: titles.map((title) => Tab(text: title)).toList()
      ),
    );
  }
}
