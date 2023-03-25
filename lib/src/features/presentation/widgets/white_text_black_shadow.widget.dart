import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';

class WhiteTextBlackShadow extends StatelessWidget {
  final String label;
  final double fontSize;
  final TextAlign textAlign;
  final FontWeight fontWeight;

  const WhiteTextBlackShadow({
    required this.label,
    this.textAlign = TextAlign.center,
    required this.fontSize,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: white,
        fontWeight: fontWeight,
        fontSize: fontSize,
        shadows: const [
          Shadow(
            blurRadius: 15.0, // shadow blur
            color: black, // shadow color
            offset: Offset(2.0, 2.0), // how much shadow will be shown
          ),
        ],
      ),
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
