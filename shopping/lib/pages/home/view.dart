import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/common/styles/colors.dart';
import 'package:shopping/common/widgets/text/big_text.dart';
import 'package:shopping/common/widgets/text/small_text.dart';
import 'package:shopping/pages/home/controller.dart';
import 'package:shopping/pages/home/widgets/food_swipe.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 45,
              bottom: 15,
            ),
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: 'Bangladesh',
                      color: AppColors.mainColor,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: 'Narsingdi',
                        ),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.mainColor,
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          FoodSwipe()
        ],
      ),
    );
  }
}
