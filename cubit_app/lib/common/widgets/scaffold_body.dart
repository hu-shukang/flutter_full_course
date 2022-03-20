import 'package:flutter/material.dart';

Widget scaffoldBody({
  required Widget child,
  double topPadding = 0,
  double bottomPadding = 0,
}) {
  return Padding(
    padding: EdgeInsets.only(
      left: 10,
      right: 10,
      top: topPadding,
      bottom: bottomPadding,
    ),
    child: child,
  );
}
