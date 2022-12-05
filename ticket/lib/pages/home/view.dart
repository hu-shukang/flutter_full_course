import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/pages/home/controller.dart';
import 'package:ticket/pages/home/widgets/article_header.dart';
import 'package:ticket/pages/home/widgets/hotel_item.dart';
import 'package:ticket/pages/home/widgets/ticket_item.dart';

import '../../common/style/color.dart';
import '../../common/style/text.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: ListView(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good morning",
                            style: AppText.headlineTextStyle3,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Book Tickets",
                            style: AppText.headlineTextStyle1,
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/img_1.png"))),
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfff4f6fd),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: AppColor.iconColor,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          "Search",
                          style: AppText.headlineTextStyle4,
                        )
                      ],
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 40),
          ArticleHeader(model: controller.upcomingFlightAH),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: controller.tickets
                  .map((ticket) => TicketItem(model: ticket))
                  .toList(),
            ),
          ),
          const SizedBox(height: 15),
          ArticleHeader(model: controller.hotelsAH),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: controller.hotels
                  .map((hotel) => HotelItem(model: hotel))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
