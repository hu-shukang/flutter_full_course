import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/route/app_page.dart';
import 'common/route/app_route.dart';
import 'common/style/theme.dart';
import 'common/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TicketApp',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.initial,
      getPages: AppPage.pages,
    );
  }
}
