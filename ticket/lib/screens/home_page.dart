import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket/screens/ticket_view.dart';
import 'package:ticket/utils/app_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: Styles.headlineTextStyle3,),
                        const SizedBox(height: 5,),
                        Text("Book Tickets", style: Styles.headlineTextStyle1,)
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/images/img_1.png")
                          )
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25,),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd),
                  ),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Styles.iconColor,),
                      const SizedBox(width: 6,),
                      Text("Search", style: Styles.headlineTextStyle4,)
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headlineTextStyle2,),
                    InkWell(
                      child: Text("view all", style: Styles.regularTextStyle.copyWith(color: Styles.primaryColor),),
                      onTap: () {
                        print("You are tapped");
                      },
                    )

                  ],
                )
              ],
            )
          ),
          const TicketView(),
        ],
      ),
    );
  }
}