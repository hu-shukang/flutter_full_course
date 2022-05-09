import 'dart:io';

import 'package:cubit_app/common/route/app_page.dart';
import 'package:cubit_app/common/route/app_route.dart';
import 'package:cubit_app/common/styles/status_bar.dart';
import 'package:cubit_app/common/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';

void main() {
  // if (!kIsWeb) {
  //   if(Platform.isAndroid) {
  //     SystemChrome.setSystemUIOverlayStyle(transparentStatusBar());
  //   }
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: AppRoute.initial,
      getPages: AppPage.pages,
    );
  }
}
