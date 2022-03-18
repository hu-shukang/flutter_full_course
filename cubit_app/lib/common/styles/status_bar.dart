import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

SystemUiOverlayStyle transparentStatusBar(){
  return const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  );
}