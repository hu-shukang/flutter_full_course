import 'package:cubit_app/common/styles/color.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  final VoidCallback onTap;
  final String? text;

  const ResponsiveButton({
    Key? key,
    this.width,
    this.text,
    required this.onTap,
    this.isResponsive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget button = InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: primaryColor,
        ),
        child: Row(
          mainAxisAlignment: text == null ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
          children: [
            text != null
                ? Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      text!,
                      style: const TextStyle(color: Colors.white),
                    ),
                  )
                : Container(),
            Image.asset('assets/img/button-one.png'),
          ],
        ),
      ),
    );
    if (isResponsive == true) {
      return Expanded(
        child: button,
      );
    }
    return button;
  }
}
