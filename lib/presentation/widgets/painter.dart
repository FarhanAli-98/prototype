import 'package:flutter/material.dart';

class FlowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFE6F3FF)
      ..style = PaintingStyle.fill;

    final pathPaint = Paint()
      ..color = Colors.grey.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    // Draw background waves
    final path1 = Path();
    path1.moveTo(0, size.height * 0.3);
    path1.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.35,
      size.width,
      size.height * 0.3,
    );
    path1.lineTo(size.width, size.height * 0.5);
    path1.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.45,
      0,
      size.height * 0.5,
    );
    path1.close();
    canvas.drawPath(path1, paint);

    // Draw connecting paths between steps
    final connectionPath = Path();
    // Path from step 1 to 2
    connectionPath.moveTo(size.width * 0.2, size.height * 0.2);
    connectionPath.quadraticBezierTo(
      size.width * 0.4,
      size.height * 0.3,
      size.width * 0.6,
      size.height * 0.4,
    );
    // Path from step 2 to 3
    connectionPath.moveTo(size.width * 0.6, size.height * 0.4);
    connectionPath.quadraticBezierTo(
      size.width * 0.4,
      size.height * 0.6,
      size.width * 0.2,
      size.height * 0.8,
    );
    canvas.drawPath(connectionPath, pathPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
