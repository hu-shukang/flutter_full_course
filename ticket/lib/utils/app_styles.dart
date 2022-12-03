import 'package:flutter/material.dart';

class Styles {
  // Color
  static Color primaryColor = const Color(0xff687daf);
  static Color textColor = const Color(0xff3b3b3b);
  static Color bgColor = const Color(0xffeeedf2);
  static Color orangeColor = const Color(0xfff37b67);
  static Color iconColor = const Color(0xffbfc205);

  // TextStyle
  static TextStyle regularTextStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headlineTextStyle1 = TextStyle(
    fontSize: 26,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headlineTextStyle2 = TextStyle(
    fontSize: 21,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headlineTextStyle3 = TextStyle(
    fontSize: 17,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headlineTextStyle4 = TextStyle(
    fontSize: 14,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
}