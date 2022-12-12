import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/model/home.dart';
import '../../common/model/search.dart';

class SearchController extends GetxController with GetSingleTickerProviderStateMixin {
  final ArticleHeaderModel upcomingFlightAH = ArticleHeaderModel(title: "Upcoming Flights", link: "");
  final List<String> tabTitles = ["Airline tickets", "Hotels"];
  late final TabController tabController;
  final _currentSwitchIndex = 0.obs;
  int get currentSwitchIndex => _currentSwitchIndex.value;
  final _departureController = TextEditingController();
  final _arrivalController = TextEditingController();

  late final TextInputModel departureTextInputModel;
  late final TextInputModel arrivalTextInputModel;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: tabTitles.length, vsync: this);
    departureTextInputModel = TextInputModel(controller: _departureController, hintText: "Departure", icon: Icons.flight_takeoff_rounded);
    arrivalTextInputModel = TextInputModel(controller: _arrivalController, hintText: "Arrival", icon: Icons.flight_land_rounded);
  }

  void handleSwitchChange(int index) {
    _currentSwitchIndex.value = index;
  }
}