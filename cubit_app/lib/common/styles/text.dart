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

SizedBox contentText({
  required String text,
  required double width,
}) {
  return SizedBox(
    width: width,
    child: Text(
      text,
      style: const TextStyle(
        color: secondaryTextColor,
        fontSize: 14,
      ),
    ),
  );
}
