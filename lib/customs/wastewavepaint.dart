import 'dart:math';

import 'package:flutter/material.dart';

class WaterWaveContainer extends StatelessWidget {
  final Color color;
  final double height;
  final double frequency;

  WaterWaveContainer(
      {required this.color, required this.height, required this.frequency});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, height),
      painter: WaterWavePainter(color, height, frequency),
    );
  }
}

class WaterWavePainter extends CustomPainter {
  final Color color;
  final double height;
  final double frequency;

  WaterWavePainter(this.color, this.height, this.frequency);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path();

    path.moveTo(0, 0);
    for (double x = 0; x < size.width; x++) {
      final y = height * (0.3 * sin(frequency * x) + 1.0);
      path.lineTo(x, y);
    }
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
