import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class TicketsPage extends GetView<TicketsController> {
  const TicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("tickets"),
    );
  }

}