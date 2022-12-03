import 'package:flutter/material.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_styles.dart';
import 'package:ticket/widgets/flight_item.dart';
import 'package:ticket/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppLayout.getWidth(context),
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: FlightItem(),
      ),
    );
  }
}
