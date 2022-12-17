import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/common/style/text.dart';
import 'package:ticket/pages/profile/widgets/status.dart';

import '../../common/style/color.dart';
import 'controller.dart';

class ProfilePage extends GetView<ProfileController> {
  final double avatorSize = 80;
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 60),
          SizedBox(
            height: avatorSize,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/img_1.png",
                    width: avatorSize,
                    height: avatorSize,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book Tickets",
                      style: AppText.headlineTextStyle1,
                    ),
                    Text(
                      "New-York",
                      style: AppText.headlineTextStyle4,
                    ),
                    const Spacer(),
                    const Status(),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "Edit",
                    style: AppText.regularTextStyle.copyWith(
                      fontSize: 14,
                      color: AppColor.primaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          Container(
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: -45,
                    top: -40,
                    child: Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 18,
                          color: const Color(0xff189999),
                        ),
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              FluentSystemIcons
                                  .ic_fluent_lightbulb_filament_filled,
                              color: AppColor.primaryColor,
                              size: 26,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "You've got a new award",
                              style: AppText.headlineTextStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "you have 150 flights in a year",
                              style: AppText.headlineTextStyle4
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 20),
          Text(
            "Accumulated miles",
            style: AppText.headlineTextStyle2,
          ),
          const SizedBox(height: 20),
          Text(
            "192802",
            style: AppText.headlineTextStyle1.copyWith(
              fontSize: 40,
              color: AppColor.primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Miles accrued",
                style: AppText.headlineTextStyle3,
              ),
              Text(
                "23 May 2021",
                style: AppText.headlineTextStyle3,
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "23 042",
                style: AppText.headlineTextStyle3.copyWith(
                  color: AppColor.textColor,
                ),
              ),
              Text(
                "Airline CO",
                style: AppText.headlineTextStyle3.copyWith(
                  color: AppColor.textColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Miles",
                style: AppText.headlineTextStyle3,
              ),
              Text(
                "Received from",
                style: AppText.headlineTextStyle3,
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "24",
                style: AppText.headlineTextStyle3.copyWith(
                  color: AppColor.textColor,
                ),
              ),
              Text(
                "McDonal's",
                style: AppText.headlineTextStyle3.copyWith(
                  color: AppColor.textColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Miles",
                style: AppText.headlineTextStyle3,
              ),
              Text(
                "Received from",
                style: AppText.headlineTextStyle3,
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "52 340",
                style: AppText.headlineTextStyle3.copyWith(
                  color: AppColor.textColor,
                ),
              ),
              Text(
                "Exuma",
                style: AppText.headlineTextStyle3.copyWith(
                  color: AppColor.textColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Miles",
                style: AppText.headlineTextStyle3,
              ),
              Text(
                "Received from",
                style: AppText.headlineTextStyle3,
              ),
            ],
          ),
          const SizedBox(height: 25),
          Text(
            "How to get more miles",
            textAlign: TextAlign.center,
            style: AppText.headlineTextStyle3.copyWith(
              color: AppColor.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
