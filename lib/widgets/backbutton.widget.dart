import 'package:flutter/material.dart';

class backButton extends StatelessWidget {
  final Color color;

  const backButton({required this.color});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IconButton(
        color: color,
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back,
          size: 35,
        ),
      ),
    );
  }
}
