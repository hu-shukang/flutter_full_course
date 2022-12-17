import 'package:flutter/material.dart';

class SplitLine extends StatelessWidget {
  final Color color;
  const SplitLine({Key? key, this.color = Colors.white}) : super(key: key);

  Widget _line() {
    return SizedBox(
      width: 5,
      height: 1,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        child: LayoutBuilder(builder: (buildContext, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate((constraints.constrainWidth() / 15).floor(),
                (index) => _line()),
          );
        }),
      ),
    );
  }
}
