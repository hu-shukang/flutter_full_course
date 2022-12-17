import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket/common/style/color.dart';
import 'package:ticket/common/widgets/split_dash_line.dart';
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
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "NYC",
                style: AppText.headlineTextStyle3
                    .copyWith(color: AppColor.textColor),
              ),
              const Spacer(),
              ThickContainer(color: AppColor.secondaryIconColor),
              AirportRounded(color: AppColor.secondaryIconColor),
              ThickContainer(color: AppColor.secondaryIconColor),
              const Spacer(),
              Text(
                "LDN",
                style: AppText.headlineTextStyle3
                    .copyWith(color: AppColor.textColor),
              ),
            ],
          ),
          const SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: Text(
                  "New-York",
                  style: AppText.headlineTextStyle4,
                ),
              ),
              Text(
                "8H 30M",
                style: AppText.headlineTextStyle3
                    .copyWith(color: AppColor.textColor),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  "London",
                  textAlign: TextAlign.right,
                  style: AppText.headlineTextStyle4,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                SplitDashLine(color: Colors.grey.shade500),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60,
                child: Text(
                  "1 May",
                  style: AppText.headlineTextStyle3
                      .copyWith(color: AppColor.textColor),
                ),
              ),
              Text(
                "08:00 AM",
                style: AppText.headlineTextStyle3
                    .copyWith(color: AppColor.textColor),
              ),
              SizedBox(
                width: 60,
                child: Text(
                  "23",
                  textAlign: TextAlign.right,
                  style: AppText.headlineTextStyle3
                      .copyWith(color: AppColor.textColor),
                ),
              )
            ],
          ),
          const SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60,
                child: Text(
                  "Date",
                  style: AppText.headlineTextStyle4,
                ),
              ),
              Text(
                "Departure time",
                style: AppText.headlineTextStyle4,
              ),
              SizedBox(
                width: 60,
                child: Text(
                  "Number",
                  textAlign: TextAlign.right,
                  style: AppText.headlineTextStyle4,
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SplitLine(),
          ),
          Row(
            children: [
              Text(
                "Flutter Dash",
                style: AppText.headlineTextStyle3
                    .copyWith(color: AppColor.textColor),
              ),
              const Spacer(),
              Text(
                "5221 478566",
                style: AppText.headlineTextStyle3
                    .copyWith(color: AppColor.textColor),
              ),
            ],
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              Text(
                "Passenger",
                style: AppText.headlineTextStyle4,
              ),
              const Spacer(),
              Text(
                "Passport",
                style: AppText.headlineTextStyle4,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                SplitDashLine(color: Colors.grey.shade500),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                "0055 444 77147",
                style: AppText.headlineTextStyle3
                    .copyWith(color: AppColor.textColor),
              ),
              const Spacer(),
              Text(
                "B2SG28",
                style: AppText.headlineTextStyle3
                    .copyWith(color: AppColor.textColor),
              ),
            ],
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              Text(
                "Number of E-ticket",
                style: AppText.headlineTextStyle4,
              ),
              const Spacer(),
              Text(
                "Booking code",
                style: AppText.headlineTextStyle4,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                SplitDashLine(color: Colors.grey.shade500),
              ],
            ),
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/visa.png",
                width: 50,
              ),
              const SizedBox(width: 5),
              Text(
                "*** 2462",
                style: AppText.headlineTextStyle3
                    .copyWith(color: AppColor.textColor),
              ),
              const Spacer(),
              Text(
                "\$249.99",
                style: AppText.headlineTextStyle3
                    .copyWith(color: AppColor.textColor),
              ),
            ],
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              Text(
                "Payment method",
                style: AppText.headlineTextStyle4,
              ),
              const Spacer(),
              Text(
                "Price",
                style: AppText.headlineTextStyle4,
              ),
            ],
          ),
          const SizedBox(height: 15),
          BarcodeWidget(
            height: 70,
            barcode: Barcode.code128(),
            data: 'https://pub.dev/packages/barcode_widget',
            drawText: false,
            color: AppColor.textColor,
          ),
        ],
      ),
    );
  }
}
