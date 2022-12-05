import 'package:flutter/material.dart';

import 'color.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColor.primaryColor,
    scaffoldBackgroundColor: AppColor.bgColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: AppColor.bgColor,
      unselectedLabelStyle: const TextStyle(fontSize: 12),
      selectedLabelStyle: const TextStyle(fontSize: 12),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: AppColor.selectedItemColor,
      unselectedItemColor: AppColor.unselectedItemColor,
      type: BottomNavigationBarType.fixed,
    )
  );
}