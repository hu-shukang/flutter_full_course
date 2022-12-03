import 'package:flutter/material.dart';
import 'package:ticket/screens/bottom_bar.dart';
import 'package:ticket/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Styles.primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomBar()
    );
  }
}
