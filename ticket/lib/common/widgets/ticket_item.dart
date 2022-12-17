import 'package:flutter/material.dart';
import 'package:ticket/common/model/home.dart';
import 'package:ticket/common/widgets/airport_rounded.dart';
import 'package:ticket/common/widgets/split_dash_line.dart';

import '../style/color.dart';
import '../style/text.dart';
import '../utils/app_layout.dart';
import 'thick_container.dart';

class TicketItem extends StatelessWidget {
  final TicketModel model;
  const TicketItem({Key? key, required this.model}) : super(key: key);

  Widget _halfCircular(bool isLeft) {
    BorderRadius borderRadius = isLeft ? const BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10)
    ) : const BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10)
    );
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: AppColor.bgColor,
            borderRadius: borderRadius
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = AppLayout.getScreenWidth() * 0.8;
    return SizedBox(
      width: width,
      child: Column(
        children: [
          /** the header part of ticket */
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Color(0xff526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                )
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(model.from.code, style: AppText.headlineTextStyle3.copyWith(color: Colors.white),),
                    const Spacer(),
                    const ThickContainer(),
                    const AirportRounded(),
                    const ThickContainer(),
                    const Spacer(),
                    Text(model.to.code, style: AppText.headlineTextStyle3.copyWith(color: Colors.white),),
                  ],
                ),
                const SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(model.from.name, style: AppText.headlineTextStyle4.copyWith(color: Colors.white),),
                    ),
                    Text(model.flyingTime, style: AppText.headlineTextStyle3.copyWith(color: Colors.white),),
                    SizedBox(
                      width: 100,
                      child: Text(model.to.name, textAlign: TextAlign.right, style: AppText.headlineTextStyle4.copyWith(color: Colors.white),),
                    ),
                  ],
                )
              ],
            ),
          ),
          /** the middle part of ticket */
          Container(
            color: AppColor.orangeColor,
            child: Row(
              children: [
                _halfCircular(true),
                const SplitDashLine(),
                _halfCircular(false),
              ],
            ),
          ),
          /** the bottom part of ticket */
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: AppColor.orangeColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)
                )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 60,
                      child: Text(model.date, style: AppText.headlineTextStyle3.copyWith(color: Colors.white),),
                    ),
                    Text(model.departureTime, style: AppText.headlineTextStyle3.copyWith(color: Colors.white),),
                    SizedBox(
                      width: 60,
                      child: Text("${model.number}", textAlign: TextAlign.right, style: AppText.headlineTextStyle3.copyWith(color: Colors.white),),
                    )
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 60,
                      child: Text("Date", style: AppText.headlineTextStyle4.copyWith(color: Colors.white),),
                    ),
                    Text("Departure time", style: AppText.headlineTextStyle4.copyWith(color: Colors.white),),
                    SizedBox(
                      width: 60,
                      child: Text("Number", textAlign: TextAlign.right, style: AppText.headlineTextStyle4.copyWith(color: Colors.white),),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
