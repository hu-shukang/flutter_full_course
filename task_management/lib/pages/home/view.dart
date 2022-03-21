import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management/common/widget/app_bar/view.dart';
import 'package:task_management/pages/home/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        child: Text('Home'),
      ),
    );
  }

}