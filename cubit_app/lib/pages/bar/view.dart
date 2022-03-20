import 'package:cubit_app/pages/bar/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BarPage extends GetView<BarController> {
  const BarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('bar page'),
    );
  }

}