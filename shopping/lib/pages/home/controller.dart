import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopping/common/model/food_swipe_item.dart';

class HomeController extends GetxController {
  final _scaleFactor = 0.8;
  late final List<FoodSwipeItem> foodSwipeList;
  late final PageController foodSwipeController;
  final _currentPageValue = Rx<double>(0.0);
  double get currentPageValue => _currentPageValue.value;

  @override
  void onInit() {
    super.onInit();
    initFoodSwipe();
    foodSwipeController = PageController(viewportFraction: 0.85);
    foodSwipeController.addListener(() {
      _currentPageValue.value = foodSwipeController.page!;
    });
  }

  Matrix4 getScale(int index) {
    Matrix4 matrix4 = Matrix4.identity();
    if (index == currentPageValue.floor()) {
      var scale = 1 - (currentPageValue - index) * (1 - _scaleFactor);
      matrix4 = Matrix4.diagonal3Values(1, scale, 1);
    } else if (index == currentPageValue.floor() + 1) {
      var scale =
          _scaleFactor + (currentPageValue - index + 1) * (1 - _scaleFactor);
      matrix4 = Matrix4.diagonal3Values(1, scale, 1);
    } else if (index == currentPageValue.floor() - 1) {
      var scale = 1 - (currentPageValue - index) * (1 - _scaleFactor);
      matrix4 = Matrix4.diagonal3Values(1, scale, 1);
    } else {
      var scale = _scaleFactor;
      matrix4 = Matrix4.diagonal3Values(1, scale, 1);
    }
    return matrix4;
  }

  @override
  void onClose() {
    foodSwipeController.dispose();
    super.onClose();
  }

  void initFoodSwipe() {
    foodSwipeList = [
      FoodSwipeItem(
        id: '001',
        image: 'img/food1.png',
        title: 'Chinese Side',
        star: 4,
        commentCount: 1243,
        category: 'Normal',
        distance: 1.7,
        time: 32,
      ),
      FoodSwipeItem(
        id: '002',
        image: 'img/food1.png',
        title: 'Japan Side',
        star: 3,
        commentCount: 500,
        category: 'Normal',
        distance: 2.5,
        time: 60,
      ),
      FoodSwipeItem(
        id: '003',
        image: 'img/food1.png',
        title: 'Chinese Side',
        star: 2,
        commentCount: 486,
        category: 'Normal',
        distance: 12.0,
        time: 40,
      ),
      FoodSwipeItem(
        id: '004',
        image: 'img/food1.png',
        title: 'Chinese Side',
        star: 3,
        commentCount: 620,
        category: 'Normal',
        distance: 1.7,
        time: 40,
      ),
      FoodSwipeItem(
        id: '005',
        image: 'img/food1.png',
        title: 'Chinese Side',
        star: 4,
        commentCount: 532,
        category: 'Normal',
        distance: 3.0,
        time: 45,
      ),
    ];
  }
}
