import 'package:flutter/material.dart';

class CircleTabIndicator extends Decoration{
  final Color color;

  const CircleTabIndicator({required this.color});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CircleBoxPainter(color: color);
  }

}

class _CircleBoxPainter extends BoxPainter {
  final Color color;

  const _CircleBoxPainter({required this.color});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    double radius = 4;

    final Offset circleOffset = Offset(configuration.size!.width / 2 - radius / 2, configuration.size!.height - radius * 2);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }

}