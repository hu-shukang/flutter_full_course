class FoodSwipeItem {
  FoodSwipeItem({
    required this.id,
    required this.image,
    required this.title,
    required this.star,
    required this.commentCount,
    required this.category,
    required this.distance,
    required this.time,
  });
  late final String id;
  late final String image;
  late final String title;
  late final int star;
  late final int commentCount;
  late final String category;
  late final double distance;
  late final int time;

  FoodSwipeItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
    star = json['star'];
    commentCount = json['commentCount'];
    category = json['category'];
    distance = json['distance'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['image'] = image;
    _data['title'] = title;
    _data['star'] = star;
    _data['commentCount'] = commentCount;
    _data['category'] = category;
    _data['distance'] = distance;
    _data['time'] = time;
    return _data;
  }
}
