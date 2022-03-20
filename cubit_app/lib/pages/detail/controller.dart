import 'package:get/get.dart';

class DetailController extends GetxController {
  final _people = 1.obs;
  int get people => _people.value;
  set people(int value) => _people.value = value;
}