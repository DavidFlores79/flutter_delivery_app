import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String title;

  const MainTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          color: black,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
        maxLines: 2,
      ),
    );
  }
}
