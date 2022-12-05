import 'package:get/get.dart';

import '../../common/model/home.dart';

class HomeController extends GetxController {
  final ArticleHeaderModel upcomingFlightAH = ArticleHeaderModel(title: "Upcoming Flights", link: "");
  final ArticleHeaderModel hotelsAH = ArticleHeaderModel(title: "Hotels", link: "");

  final List<HotelModel> hotels = [
    HotelModel(image: "one.png", place: "Open Space", destination: "London", price: 25),
    HotelModel(image: "two.png", place: "Global Will", destination: "London", price: 40),
    HotelModel(image: "three.png", place: "Tallest Building", destination: "Dubai", price: 68),
  ];

  final List<TicketModel> tickets = [
    TicketModel(
        from: From(code: "NYC", name: "New-York"),
        to: To(code: "LDN", name: "London"),
        flyingTime: "8H 30M",
        date: "1 MAY",
        departureTime: "08:00 AM",
        number: 23,
    ),
    TicketModel(
        from: From(code: "DK", name: "Dhaka"),
        to: To(code: "SH", name: "Shanghai"),
        flyingTime: "4H 20M",
        date: "1 MAY",
        departureTime: "09:00 AM",
        number: 45,
    ),
  ];
}