import 'package:flutter/material.dart';

import '../../../common/model/home.dart';
import '../../../common/style/color.dart';
import '../../../common/style/text.dart';
import '../../../common/utils/app_layout.dart';

class HotelItem extends StatelessWidget {
  final HotelModel model;
  const HotelItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = AppLayout.getScreenWidth();
    return Container(
      width: width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17),
      decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColor.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${model.image}"),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            model.place,
            style:
                AppText.headlineTextStyle2.copyWith(color: AppColor.kakiColor),
          ),
          const SizedBox(height: 5),
          Text(
            model.destination,
            style: AppText.headlineTextStyle3.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            "\$${model.price}/night",
            style:
                AppText.headlineTextStyle1.copyWith(color: AppColor.kakiColor),
          ),
        ],
      ),
    );
  }
}
