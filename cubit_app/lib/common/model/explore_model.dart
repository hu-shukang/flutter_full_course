class ExploreModel {
  ExploreModel({
    required this.image,
    required this.text,
  });
  late final String image;
  late final String text;

  ExploreModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['image'] = image;
    _data['text'] = text;
    return _data;
  }
}
