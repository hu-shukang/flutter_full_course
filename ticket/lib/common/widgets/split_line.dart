import 'package:flutter/material.dart';

class SplitLine extends StatelessWidget {
  const SplitLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      margin: const EdgeInsets.only(top: 12, bottom: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
      ),
    );
  }
}
