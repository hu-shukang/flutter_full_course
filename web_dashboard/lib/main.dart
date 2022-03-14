import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/common/routing/app_page.dart';
import 'package:web_dashboard/common/routing/app_route.dart';

import 'common/style/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.initial,
      getPages: AppPage.pages,
    );
  }
}
