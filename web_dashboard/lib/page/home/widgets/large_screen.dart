import 'package:flutter/material.dart';
import 'package:web_dashboard/common/routing/home_nest_nav.dart';
import 'package:web_dashboard/page/home/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SideMenu(),
        Expanded(
          child: HomeNestNav(),
        ),
      ],
    );
  }
}
