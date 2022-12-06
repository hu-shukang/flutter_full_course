import 'package:get/get.dart';

class SearchController extends GetxController {
  final Iterable<MapEntry<int, String>> ticketSwitches = ["Airline tickets", "Hotels"].asMap().entries;
  final _currentSwitchIndex = 0.obs;
  int get currentSwitchIndex => _currentSwitchIndex.value;

  void handleSwitchChange(int index) {
    _currentSwitchIndex.value = index;
  }
}