import 'package:flutter/material.dart';

class AirportRounded extends StatelessWidget {
  final Color color;
  const AirportRounded({Key? key, this.color = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
              height: 24,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(
                        (constraints.constrainWidth() / 8).floor(),
                        (index) => SizedBox(
                              width: 3,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(color: color),
                              ),
                            )),
                  );
                },
              )),
          Transform.rotate(
            angle: 1.5,
            child: Icon(
              Icons.local_airport_rounded,
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
