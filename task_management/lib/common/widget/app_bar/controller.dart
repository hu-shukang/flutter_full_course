import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppBarController extends GetxController {
  final _key = 'IS_LIGHT_THEME';
  final _box = GetStorage();

  /// true: light, false: dark
  bool _loadThemeMode() => _box.read(_key) ?? true;

  ThemeMode get theme => _loadThemeMode() ? ThemeMode.light : ThemeMode.dark;

  void switchTheme(){
    bool isLightTheme = _loadThemeMode();
    _box.write(_key, !isLightTheme);
    Get.changeThemeMode(!isLightTheme ? ThemeMode.light : ThemeMode.dark);
  }
}