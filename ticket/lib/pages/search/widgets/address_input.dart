import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/common/model/search.dart';

import '../../../common/style/color.dart';
import '../controller.dart';

class AddressInput extends StatelessWidget {
  final TextInputModel model;
  const AddressInput({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: TextField(
        maxLines: 1,
        textAlignVertical: TextAlignVertical.center,
        controller: model.controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: model.hintText,
          prefixIcon: Icon(
            model.icon,
            color: AppColor.secondaryIconColor,
          ),
        ),
      ),
    );
  }
}
