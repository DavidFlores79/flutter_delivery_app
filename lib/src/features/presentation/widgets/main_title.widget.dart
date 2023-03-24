import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String title;
  double fontSize;
  FontWeight fontWeight;
  Color color;

  MainTitle({
    required this.title,
    this.fontSize = 28,
    this.color = black,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
        maxLines: 2,
      ),
    );
  }
}
