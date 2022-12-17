import 'package:flutter/material.dart';
import 'package:ticket/common/style/color.dart';
import 'package:ticket/common/widgets/split_line.dart';

import '../../../common/style/text.dart';
import '../../../common/widgets/airport_rounded.dart';
import '../../../common/widgets/thick_container.dart';

class TicketDetail extends StatelessWidget {
  const TicketDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(21),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        Row(
          children: [
            Text("NYC", style: AppText.headlineTextStyle3.copyWith(color: AppColor.textColor),),
            const Spacer(),
            ThickContainer(color: AppColor.secondaryIconColor),
            AirportRounded(color: AppColor.secondaryIconColor),
            ThickContainer(color: AppColor.secondaryIconColor),
            const Spacer(),
            Text("LDN", style: AppText.headlineTextStyle3.copyWith(color: AppColor.textColor),),
          ],
        ),
        const SizedBox(height: 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 100,
              child: Text("New-York", style: AppText.headlineTextStyle4,),
            ),
            Text("8H 30M", style: AppText.headlineTextStyle3.copyWith(color: AppColor.textColor),),
            SizedBox(
              width: 100,
              child: Text("London", textAlign: TextAlign.right, style: AppText.headlineTextStyle4,),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SplitLine(color: Colors.black,),
        ),
      ],),
    );
  }
}
