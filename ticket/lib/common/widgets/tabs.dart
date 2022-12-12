import 'package:flutter/material.dart';
import 'package:ticket/common/style/color.dart';

class Tabs extends StatefulWidget {
  final List<String> titles;
  final void Function(int index) onIndexChanged;
  const Tabs({Key? key, required this.titles, required this.onIndexChanged}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: widget.titles.length);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        widget.onIndexChanged(_tabController.index);
      }
    });
  }

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
        controller: _tabController,
        indicator: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        labelColor: AppColor.textColor,
        tabs: widget.titles.map((title) => Tab(text: title)).toList()
      ),
    );
  }
}
