import 'package:cubit_app/common/styles/color.dart';
import 'package:cubit_app/common/styles/text.dart';
import 'package:cubit_app/common/widgets/app_bar.dart';
import 'package:cubit_app/common/widgets/responsive_button.dart';
import 'package:cubit_app/pages/detail/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({Key? key}) : super(key: key);

  Widget _buildBackgroundImage(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/mountain.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildInfoTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        pageTitle(text: 'Yosemite', size: 30),
        pageTitle(text: '\$ 250', color: primaryTextColor, size: 30),
      ],
    );
  }

  Widget _buildInfoPosition() {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          color: primaryColor,
          size: 14,
        ),
        const SizedBox(
          width: 5,
        ),
        contentText(
          text: 'USA, California',
          color: primaryTextColor,
        ),
      ],
    );
  }

  Widget _buildEvaluation() {
    return Wrap(
      children: List.generate(
        6,
        (index) {
          if (index < 4) {
            return const Icon(
              Icons.star,
              size: 14,
              color: Color(0xFFE0C51B),
            );
          } else if (index == 4) {
            return const Icon(
              Icons.star_half,
              size: 14,
              color: Color(0xFFE0C51B),
            );
          } else {
            return contentText(
              text: '(4.5)',
              size: 12,
              color: primaryTextColor,
              padding: const EdgeInsets.only(left: 5),
            );
          }
        },
      ),
    );
  }

  Widget _buildNumber(int count) {
    return InkWell(
      onTap: () => controller.people = count,
      child: Obx(
        () => Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: count == controller.people ? Colors.black : Colors.grey.withOpacity(0.3),
          ),
          alignment: Alignment.center,
          child: pageTitle(
            text: count.toString(),
            size: 20,
            color: count == controller.people ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildNumberGroup() {
    return Wrap(
      children: List.generate(5, (index) => _buildNumber(index + 1)),
    );
  }

  Widget _buildBottomButton(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: primaryTextColor),
            ),
            child: const Icon(
              Icons.favorite_border,
              color: primaryTextColor,
            ),
          ),
        ),
        const SizedBox(width: 20),
        ResponsiveButton(isResponsive: true, text: 'Book Trip Now', onTap: () {})
      ],
    );
  }

  Widget _buildInfo(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoTitle(),
          const SizedBox(height: 5),
          _buildInfoPosition(),
          const SizedBox(height: 8),
          _buildEvaluation(),
          const SizedBox(height: 20),
          pageTitle(
            text: 'People',
            size: 20,
          ),
          const SizedBox(height: 5),
          contentText(text: 'Number of people in your group.'),
          const SizedBox(height: 8),
          _buildNumberGroup(),
          const SizedBox(height: 20),
          pageTitle(
            text: 'Description',
            size: 20,
          ),
          const SizedBox(height: 5),
          contentText(
              text:
                  'Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.Yosemite National Park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.'),
          const SizedBox(height: 20),
          _buildBottomButton(context),
          const SizedBox(height: 60),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: controller.scrollController,
            child: Column(
              children: [
                _buildBackgroundImage(context),
                _buildInfo(context),
              ],
            ),
          ),
          Obx(
            () => Opacity(
              opacity: controller.appBarAlpha,
              child: appBar(context: context, title: 'Yosemite'),
            ),
          ),
        ],
      ),
    );
  }
}
