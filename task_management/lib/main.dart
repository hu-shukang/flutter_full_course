import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_management/common/route/app_page.dart';
import 'package:task_management/common/route/app_route.dart';
import 'package:task_management/common/style/theme.dart';
import 'package:task_management/common/widget/app_bar/controller.dart';
import 'package:task_management/global.dart';

void main() async {
  await Global.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appBarController = Get.find<AppBarController>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: _appBarController.theme,
      initialRoute: AppRoute.INITIAL,
      getPages: AppPage.pages,
    );
  }
}
