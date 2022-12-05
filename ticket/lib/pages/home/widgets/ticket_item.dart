import 'package:flutter/material.dart';

import '../../../common/utils/app_layout.dart';
import '../../../common/utils/app_styles.dart';
import 'thick_container.dart';

class TicketItem extends StatelessWidget {
  const TicketItem({Key? key}) : super(key: key);

  Widget _halfCircular(bool isLeft) {
    BorderRadius borderRadius = isLeft ? const BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10)
    ) : const BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10)
    );
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Styles.bgColor,
            borderRadius: borderRadius
        ),
      ),
    );
  }

  Widget _line() {
    return const SizedBox(
      width: 5,
      height: 1,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppLayout.getWidth(context) * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            /** the header part of ticket */
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  color: Color(0xff526799),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: Styles.headlineTextStyle3.copyWith(color: Colors.white),),
                      const Spacer(),
                      const ThickContainer(),
                      Expanded(child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate((constraints.constrainWidth() / 7).floor(), (index) => const SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(decoration: BoxDecoration(color: Colors.white),),
                                    )),
                                  );
                                },
                              )
                          ),
                          Transform.rotate(angle: 1.5, child: const Icon(Icons.local_airport_rounded, color: Colors.white,),)
                        ],
                      )),
                      const ThickContainer(),
                      const Spacer(),
                      Text("LDN", style: Styles.headlineTextStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                  const SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text("New-York", style: Styles.headlineTextStyle4.copyWith(color: Colors.white),),
                      ),
                      Text("8H 30M", style: Styles.headlineTextStyle3.copyWith(color: Colors.white),),
                      SizedBox(
                        width: 100,
                        child: Text("London", textAlign: TextAlign.right, style: Styles.headlineTextStyle4.copyWith(color: Colors.white),),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /** the middle part of ticket */
            Container(
              color: Styles.orangeColor,
              child: Column(
                children: [
                  Row(
                    children: [
                      _halfCircular(true),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 12),
                        child: LayoutBuilder(builder: (buildContext, constraints) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate((constraints.constrainWidth() / 15).floor(), (index) => _line()),
                          );
                        }),
                      )),
                      _halfCircular(false),
                    ],
                  )
                ],
              ),
            ),
            /** the bottom part of ticket */
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)
                  )
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 60,
                        child: Text("1 MAY", style: Styles.headlineTextStyle3.copyWith(color: Colors.white),),
                      ),
                      Text("08:00 AM", style: Styles.headlineTextStyle3.copyWith(color: Colors.white),),
                      SizedBox(
                        width: 60,
                        child: Text("23", textAlign: TextAlign.right, style: Styles.headlineTextStyle3.copyWith(color: Colors.white),),
                      )
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 60,
                        child: Text("Date", style: Styles.headlineTextStyle4.copyWith(color: Colors.white),),
                      ),
                      Text("Departure time", style: Styles.headlineTextStyle4.copyWith(color: Colors.white),),
                      SizedBox(
                        width: 60,
                        child: Text("Number", textAlign: TextAlign.right, style: Styles.headlineTextStyle4.copyWith(color: Colors.white),),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
