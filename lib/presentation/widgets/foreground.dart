import 'package:flutter/material.dart';
import 'package:prototype/presentation/widgets/painter.dart';

class FlowBackground extends StatelessWidget {
  const FlowBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: FlowPainter(),
      size: const Size(double.infinity, 1300), // Adjust height as needed
    );
  }
}
