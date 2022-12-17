import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/model/home.dart';

class TicketsController extends GetxController with GetSingleTickerProviderStateMixin {
  final List<String> tabTitles = ["Upcoming", "Previous"];
  late final TabController tabController;
  final ticketModel = TicketModel(
    from: From(code: "NYC", name: "New-York"),
    to: To(code: "LDN", name: "London"),
    flyingTime: "8H 30M",
    date: "1 MAY",
    departureTime: "08:00 AM",
    number: 23,
  );

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: tabTitles.length, vsync: this);
  }
}
