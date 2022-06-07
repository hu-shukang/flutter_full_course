import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/common/route/app_page.dart';
import 'package:shopping/common/route/app_route.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.initial,
      getPages: AppPage.pages,
    );
  }
}
