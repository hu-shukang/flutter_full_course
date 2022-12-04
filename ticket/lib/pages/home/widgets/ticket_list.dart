import 'package:flutter/material.dart';

import '../../../common/utils/app_layout.dart';
import 'ticket_item.dart';

class TicketList extends StatelessWidget {
  const TicketList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppLayout.getWidth(context),
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: const TicketItem(),
      ),
    );
  }
}
