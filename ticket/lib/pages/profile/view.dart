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
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset("assets/images/img_1.png", width: avatorSize, height: avatorSize,),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Book Tickets", style: AppText.headlineTextStyle1,),
                    Text("New-York", style: AppText.headlineTextStyle4,),
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
          )
        ],
      ),
    );
  }

}