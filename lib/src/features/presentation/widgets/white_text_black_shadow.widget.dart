import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';

class WhiteTextBlackShadow extends StatelessWidget {
  final String label;
  final double fontSize;

  const WhiteTextBlackShadow({
    required this.label,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: white,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        shadows: const [
          Shadow(
            blurRadius: 15.0, // shadow blur
            color: black, // shadow color
            offset: Offset(2.0, 2.0), // how much shadow will be shown
          ),
        ],
      ),
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
