import 'package:flutter/material.dart';
import 'package:shopping/common/styles/colors.dart';
import 'package:shopping/common/widgets/text/small_text.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;
  final Color textColor;
  const IconText({
    Key? key,
    required this.icon,
    required this.text,
    this.textColor = AppColors.textColor,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        const SizedBox(width: 5),
        SmallText(
          text: text,
          color: textColor,
        ),
      ],
    );
  }
}
