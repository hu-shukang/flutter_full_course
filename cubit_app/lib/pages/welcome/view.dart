import 'package:cubit_app/common/styles/color.dart';
import 'package:cubit_app/common/styles/text.dart';
import 'package:cubit_app/common/widgets/responsive_button.dart';
import 'package:cubit_app/pages/welcome/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  Widget _buildIndexDot(int index) {
    return Obx(
      () => Container(
        width: 8,
        height: 8,
        margin: const EdgeInsets.only(bottom: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: controller.currentIndex == index ? primaryColor : primaryColor.withOpacity(0.3),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: controller.onPageChanged,
            scrollDirection: Axis.vertical,
            itemCount: controller.images.length,
            itemBuilder: (_, index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(controller.images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 150,
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      pageTitle(text: 'Trips'),
                      pageSubTitle(text: 'Mountain'),
                      const SizedBox(height: 20),
                      contentText(
                        text:
                            'Mountain hikes give you an incredible sense of freedom along with endurance tests.',
                        width: 240,
                      ),
                      const SizedBox(height: 40),
                      ResponsiveButton(
                        width: 100,
                        onTap: controller.handleToHome,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            top: 150,
            right: 20,
            child: Column(
              children: List.generate(
                controller.images.length,
                _buildIndexDot,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
