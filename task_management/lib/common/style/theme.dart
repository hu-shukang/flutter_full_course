import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_management/common/style/color.dart';

class AppTheme{
  AppTheme._();

  static const SystemUiOverlayStyle _systemOverlayStyle = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  );

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColor.primary,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColor.primary,
      systemOverlayStyle: _systemOverlayStyle,
    ),
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColor.darkGrey,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColor.darkGrey,
      systemOverlayStyle: _systemOverlayStyle,
    ),
  );
}