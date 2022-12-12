import 'package:flutter/material.dart';

class TextInputModel {
  TextInputModel({
    required this.controller,
    required this.hintText,
    required this.icon
  });
  late final TextEditingController controller;
  late final String hintText;
  late final IconData icon;
}