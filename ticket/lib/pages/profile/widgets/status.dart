import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket/common/style/color.dart';
import 'package:ticket/common/style/text.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 26,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(13)),
      child: Row(
        children: [
          SizedBox(
            height: 18,
            width: 18,
            child: CircleAvatar(
              backgroundColor: AppColor.primaryColor,
              radius: 14,
              child: const Icon(
                FluentSystemIcons.ic_fluent_shield_filled,
                size: 14,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 6),
          Text(
            "Premium status",
            style: AppText.regularTextStyle.copyWith(
              fontSize: 14,
              color: AppColor.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
