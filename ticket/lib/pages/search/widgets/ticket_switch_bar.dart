import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/pages/search/controller.dart';

import '../../../common/style/color.dart';
import '../../../common/utils/app_layout.dart';

class TicketSwitchBar extends StatelessWidget {
  TicketSwitchBar({Key? key}) : super(key: key);
  final SearchController controller = Get.find<SearchController>();
  final double padding = 3;
  final double radius = 50;

  BoxDecoration? _getBoxDecoration(int index) {
    if (index == controller.currentSwitchIndex) {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double width = constraints.maxWidth;

      double itemWidth = (width - padding * 2) / 2;
      return Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: AppColor.greyColor,
        ),
        child: Obx(
          () => Row(
            children: controller.ticketSwitches
                .map((entry) => InkWell(
                      child: Container(
                        width: itemWidth,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        decoration: _getBoxDecoration(entry.key),
                        child: Center(
                          child: Text(entry.value),
                        ),
                      ),
                      onTap: () => controller.handleSwitchChange(entry.key),
                    ))
                .toList(),
          ),
        ),
      );
    });
  }
}
