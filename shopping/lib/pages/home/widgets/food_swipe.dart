import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/common/styles/colors.dart';
import 'package:shopping/common/widgets/text/big_text.dart';
import 'package:shopping/common/widgets/text/icon_text.dart';
import 'package:shopping/common/widgets/text/small_text.dart';
import 'package:shopping/pages/home/controller.dart';

class FoodSwipe extends StatelessWidget {
  FoodSwipe({Key? key}) : super(key: key);
  final HomeController controller = Get.find<HomeController>();

  Widget _buildStar(int star) {
    return Wrap(
      children: List.generate(
        5,
        (index) => Icon(
          index < star ? Icons.star : Icons.star_border,
          color: AppColors.mainColor,
          size: 14,
        ),
      ),
    );
  }

  Widget _buildSwipeItem(int position) {
    var item = controller.foodSwipeList[position];
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xFF69c5df),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(item.image),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 30,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFE8E8E8),
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
                BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                BoxShadow(color: Colors.white, offset: Offset(5, 0)),
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: item.title),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      _buildStar(item.star),
                      const SizedBox(width: 10),
                      SmallText(text: item.star.toString()),
                      const SizedBox(width: 10),
                      SmallText(text: item.commentCount.toString()),
                      const SizedBox(width: 10),
                      const SmallText(text: 'comments'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconText(
                        icon: Icons.circle_sharp,
                        text: item.category,
                        iconColor: AppColors.iconColor1,
                      ),
                      IconText(
                        icon: Icons.location_on,
                        text: '${item.distance}km',
                        iconColor: AppColors.mainColor,
                      ),
                      IconText(
                        icon: Icons.access_time_rounded,
                        text: '${item.time}min',
                        iconColor: AppColors.iconColor2,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDotsIndicator() {
    return Obx(
      () => DotsIndicator(
        dotsCount: controller.foodSwipeList.length,
        position: controller.currentPageValue,
        decorator: DotsDecorator(
          size: const Size.square(9.0),
          activeColor: AppColors.mainColor,
          activeSize: const Size(18.0, 9.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          child: PageView.builder(
            itemCount: controller.foodSwipeList.length,
            controller: controller.foodSwipeController,
            itemBuilder: (context, position) {
              return Obx(() {
                Matrix4 matrix4 = controller.getScale(position);
                return Transform(
                  transform: matrix4,
                  child: _buildSwipeItem(position),
                );
              });
            },
          ),
        ),
        _buildDotsIndicator(),
      ],
    );
  }
}
