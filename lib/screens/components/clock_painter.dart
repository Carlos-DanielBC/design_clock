import 'dart:math';

import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;

  ClockPainter(this.context, this.dateTime);

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    //minute calculation
    double minuteX =
        centerX + size.width * 0.35 * cos(dateTime.minute * 6 * pi / 180);
    double minuteY =
        centerY + size.width * 0.35 * sin(dateTime.minute * 6 * pi / 180);

    //minute line
    canvas.drawLine(
      center,
      Offset(minuteX, minuteY),
      Paint()
        ..color = Theme.of(context).colorScheme.scrim
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );

    //hour calculation
    double hourX =
        centerX +
        size.width *
            0.3 *
            cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    double hourY =
        centerY +
        size.width *
            0.3 *
            sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);

    // hour line
    canvas.drawLine(
      center,
      Offset(hourX, hourY),
      Paint()
        ..color = Theme.of(context).colorScheme.secondary
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );

    //secundary calculation
    double secondX =
        centerX + size.width * 0.4 * cos(dateTime.second * 6 * pi / 180);
    double secondY =
        centerY + size.width * 0.4 * sin(dateTime.second * 6 * pi / 180);

    //secund line
    canvas.drawLine(
      center,
      Offset(secondX, secondY),
      Paint()..color = Theme.of(context).primaryColor,
    );

    //center dots
    Paint dotPainter =
        Paint()..color = Theme.of(context).primaryIconTheme.color!;
    canvas.drawCircle(center, 24, dotPainter);
    canvas.drawCircle(
      center,
      23,
      Paint()..color = Theme.of(context).secondaryHeaderColor,
    );
    canvas.drawCircle(center, 10, dotPainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
