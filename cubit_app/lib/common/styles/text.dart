import 'package:cubit_app/common/styles/color.dart';
import 'package:flutter/material.dart';

Text pageTitle({
  required String text,
  double size = 30,
  Color color = primaryTitleColor,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text pageSubTitle({
  required String text,
  double size = 30,
  Color color = secondaryTitleColor,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w300,
    ),
  );
}

Container contentText({
  required String text,
  double? width,
  Color color = secondaryTextColor,
  double size = 14,
  EdgeInsets? padding,
}) {
  return Container(
    width: width,
    padding: padding,
    child: Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    ),
  );
}
