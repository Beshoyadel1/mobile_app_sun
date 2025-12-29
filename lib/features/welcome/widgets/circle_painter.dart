
import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';

class CirclePainter extends CustomPainter {
  final double progress;

  CirclePainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 4;
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = (size.width / 2) - strokeWidth;


    Paint basePaint = Paint()
      ..color = AppColors.greyColor.withAlpha(63)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;


    Paint progressPaint = Paint()
      ..color = AppColors.orangeColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;


    canvas.drawCircle(center, radius, basePaint);


    double sweepAngle = 2 * 3.1415926535 * progress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -3.1415926535 / 2,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
