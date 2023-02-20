import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MainTitleWithButton extends StatelessWidget {
  String title;
  String textButton;
  final VoidCallback onPressed;

  MainTitleWithButton(
      {required this.title, required this.textButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MainTitle(title: title),
        Container(
          child: Row(
            children: [
              TextButton(
                onPressed: onPressed,
                child: Row(
                  children: [
                    Text(
                      textButton,
                      style: const TextStyle(
                        fontSize: 16,
                        color: darkGrey,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_right_sharp,
                      color: darkGrey,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
