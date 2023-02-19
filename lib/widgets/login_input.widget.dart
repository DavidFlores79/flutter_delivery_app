import 'package:delivery_app/colors/colors.dart';
import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;

  const LoginInput({
    super.key,
    required this.hintText,
    required this.keyboardType,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(left: 20.0),
      decoration: const BoxDecoration(
          color: darkGreyTransparent,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: TextField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
