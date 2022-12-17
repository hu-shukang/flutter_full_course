import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/common/style/text.dart';
import 'package:ticket/common/widgets/ticket_item.dart';
import 'package:ticket/pages/tickets/widgets/ticket_detail.dart';

import '../../common/widgets/tabs.dart';
import 'controller.dart';

class TicketsPage extends GetView<TicketsController> {
  const TicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const SizedBox(height: 40),
              Text(
                "Tickets",
                style: AppText.headlineTextStyle1,
              ),
              const SizedBox(height: 20),
              Tabs(
                titles: controller.tabTitles,
                tabController: controller.tabController,
              ),
              const SizedBox(height: 20),
              TicketDetail(),
              const SizedBox(height: 20),
              TicketItem(model: controller.ticketModel),
            ],
          )
        ],
      ),
    );
  }
}
