import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/pages/search/controller.dart';

import 'address_input.dart';

class FindTickets extends StatelessWidget {
  final SearchController controller = Get.find<SearchController>();
  FindTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddressInput(model: controller.departureTextInputModel),
        const SizedBox(height: 15),
        AddressInput(model: controller.arrivalTextInputModel),
        const SizedBox(height: 15),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: const Size.fromHeight(50),
          ),
          onPressed: () {},
          child: const Text('Find tickets'),
        ),
      ],
    );
  }
}
