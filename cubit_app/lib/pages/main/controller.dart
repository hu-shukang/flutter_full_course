import 'package:cubit_app/common/model/explore_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController with GetSingleTickerProviderStateMixin{
  late TabController tabController;
  List<String> tabTitleList = ['Places', 'Inspiration', 'Emotions'];

  List<ExploreModel> exploreList = [
    ExploreModel(image: 'assets/img/kayaking.png', text: 'kayaking'),
    ExploreModel(image: 'assets/img/snorkling.png', text: 'snorkling'),
    ExploreModel(image: 'assets/img/balloning.png', text: 'balloning'),
    ExploreModel(image: 'assets/img/hiking.png', text: 'hiking'),
  ];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
  }

  void handleMenuTap() {

  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}