import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/common/style/color.dart';
import 'package:ticket/common/style/text.dart';
import 'package:ticket/common/utils/app_layout.dart';
import 'package:ticket/pages/search/widgets/address_input.dart';
import 'package:ticket/pages/search/widgets/ticket_switch_bar.dart';

import '../../common/widgets/article_header.dart';
import 'controller.dart';

class SearchPage extends GetView<SearchController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = AppLayout.getScreenWidth();
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 40),
          Text(
            "What are\nyou looking for?",
            style: AppText.headlineTextStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(height: 20),
          TicketSwitchBar(),
          const SizedBox(height: 25),
          AddressInput(model: controller.departureTextInputModel),
          const SizedBox(height: 15),
          AddressInput(model: controller.arrivalTextInputModel),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
            child: const Text('Find tickets'),
          ),
          const SizedBox(height: 25),
          ArticleHeader(
            model: controller.upcomingFlightAH,
            withHorizontalPadding: false,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth * 0.42,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg"),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out this chance.",
                      style: AppText.headlineTextStyle3,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: screenWidth * 0.42,
                        decoration: BoxDecoration(
                          color: const Color(0xff3ab8b8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: AppText.headlineTextStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Take the survey about our services and get discount",
                              style: AppText.headlineTextStyle3
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color: const Color(0xff189999),),
                            color: Colors.transparent,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: screenWidth * 0.42,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffec6545)
                    ),
                    child: Column(
                      children: [
                        Text("Take love", style: AppText.headlineTextStyle2.copyWith(color: Colors.white),),
                        const SizedBox(height: 10),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 38),
                              ),
                              TextSpan(
                                text: '😊',
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 38),
                              )
                            ]
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
