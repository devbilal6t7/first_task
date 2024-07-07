import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientTextWithBorder extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;
  final Color borderColor;
  final double borderWidth;

  GradientTextWithBorder({
    required this.text,
    required this.style,
    required this.gradient,
    required this.borderColor,
    this.borderWidth = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Outline
        Text(
          text,
          style: style.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = borderWidth
                ..color = borderColor
          ),
        ),
        // Gradient text
        ShaderMask(
          shaderCallback: (bounds) => gradient.createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
          child: Text(
            text,
            style: style.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
