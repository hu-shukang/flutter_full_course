import 'package:flutter/material.dart';
import 'package:shopping/common/styles/colors.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final double height;

  const SmallText({
    Key? key,
    required this.text,
    this.color = AppColors.textColor,
    this.size = 12.0,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
        height: height,
      ),
    );
  }
}
