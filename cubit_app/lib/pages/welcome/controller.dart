import 'package:cubit_app/common/route/app_route.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  final List<String> images = [
    'assets/img/welcome-one.png',
    'assets/img/welcome-two.png',
    'assets/img/welcome-three.png',
  ];
  final _currentIndex = 0.obs;
  int get currentIndex => _currentIndex.value;



  void onPageChanged(int index) {
    _currentIndex.value = index;
  }

  void handleToHome() {
    Get.offAndToNamed(AppRoute.home);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
