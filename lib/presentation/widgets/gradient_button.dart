import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;

  const GradientButton({super.key, required this.text, required this.onPressed,required this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF5FA4A8), // Start color of the gradient
              Color(0xFF4676D7), // End color of the gradient
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30), // Rounded corners
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
