import 'package:flutter/material.dart';
import 'package:shopping/common/styles/colors.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color color;
  final TextOverflow textOverflow;
  final double size;
  const BigText({
    Key? key,
    required this.text,
    this.color = AppColors.mainBlackColor,
    this.textOverflow = TextOverflow.ellipsis,
    this.size = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      softWrap: false,
      maxLines: 1,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
      ),
    );
  }
}
