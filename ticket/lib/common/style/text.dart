import 'package:flutter/material.dart';

import 'color.dart';

class AppText {
  static TextStyle regularTextStyle = TextStyle(
    fontSize: 16,
    color: AppColor.textColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headlineTextStyle1 = TextStyle(
    fontSize: 26,
    color: AppColor.textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headlineTextStyle2 = TextStyle(
    fontSize: 21,
    color: AppColor.textColor,
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