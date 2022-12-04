import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class SearchPage extends GetView<SearchController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Search"),
    );
  }

}