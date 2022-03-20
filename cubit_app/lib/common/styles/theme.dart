import 'package:cubit_app/common/styles/circle_tab_indicator.dart';
import 'package:cubit_app/common/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: scaffoldBackground,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: scaffoldBackground,
      iconTheme: IconThemeData(
        color: Colors.black54,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black54,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0, // 该设置可以去掉BottomNavigationBar顶部的横线
      backgroundColor: scaffoldBackground,
      unselectedLabelStyle: TextStyle(fontSize: 12),
      selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black54,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.black54,
      unselectedLabelColor: Colors.grey,
      labelPadding: EdgeInsets.only(left: 10, right: 10,),
      indicatorSize: TabBarIndicatorSize.label,
      indicator: CircleTabIndicator(color: Colors.black54),
    ),
  );
}