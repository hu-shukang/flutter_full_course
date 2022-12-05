class ArticleHeaderModel {
  ArticleHeaderModel({
    required this.title,
    required this.link,
  });
  late final String title;
  late final String link;

  ArticleHeaderModel.fromJson(Map<String, dynamic> json){
    title = json['title'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['link'] = link;
    return data;
  }
}

class HotelModel {
  HotelModel({
    required this.image,
    required this.place,
    required this.destination,
    required this.price,
  });
  late final String image;
  late final String place;
  late final String destination;
  late final int price;

  HotelModel.fromJson(Map<String, dynamic> json){
    image = json['image'];
    place = json['place'];
    destination = json['destination'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['image'] = image;
    data['place'] = place;
    data['destination'] = destination;
    data['price'] = price;
    return data;
  }
}

class TicketModel {
  TicketModel({
    required this.from,
    required this.to,
    required this.flyingTime,
    required this.date,
    required this.departureTime,
    required this.number,
  });
  late final From from;
  late final To to;
  late final String flyingTime;
  late final String date;
  late final String departureTime;
  late final int number;

  TicketModel.fromJson(Map<String, dynamic> json){
    from = From.fromJson(json['from']);
    to = To.fromJson(json['to']);
    flyingTime = json['flyingTime'];
    date = json['date'];
    departureTime = json['departureTime'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['from'] = from.toJson();
    _data['to'] = to.toJson();
    _data['flyingTime'] = flyingTime;
    _data['date'] = date;
    _data['departureTime'] = departureTime;
    _data['number'] = number;
    return _data;
  }
}

class From {
  From({
    required this.code,
    required this.name,
  });
  late final String code;
  late final String name;

  From.fromJson(Map<String, dynamic> json){
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['name'] = name;
    return _data;
  }
}

class To {
  To({
    required this.code,
    required this.name,
  });
  late final String code;
  late final String name;

  To.fromJson(Map<String, dynamic> json){
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['name'] = name;
    return _data;
  }
}