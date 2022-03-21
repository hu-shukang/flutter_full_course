import 'package:flutter/material.dart';

Widget appBar({
  required BuildContext context,
  required String title,
  Widget? leading,
  Widget? action,
}) {
  double statusBarHeight = MediaQuery.of(context).padding.top;
  return Material(
    elevation: 1,
    child: Container(
      height: 90,
      padding: EdgeInsets.only(top: statusBarHeight),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leading ?? Container(),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          action ?? Container(),
        ],
      ),
    ),
  );
}
