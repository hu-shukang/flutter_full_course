import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/common/style/color.dart';
import 'package:ticket/common/style/text.dart';
import 'package:ticket/common/utils/app_layout.dart';
import 'package:ticket/pages/search/widgets/ticket_switch_bar.dart';

import 'controller.dart';

class SearchPage extends GetView<SearchController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 40),
          Text(
            "What are\nyou looking for?",
            style: AppText.headlineTextStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(height: 20),
          TicketSwitchBar(),
        ],
      ),
    );
  }
}
