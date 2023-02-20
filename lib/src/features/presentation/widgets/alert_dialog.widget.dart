import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';

void showAlertDialog(BuildContext context, AssetImage assetImage,
    String message, String labelButton, VoidCallback onPressed) {
  showDialog(
    // barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        content: Container(
          height: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: assetImage,
                height: 120,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                message,
                style: const TextStyle(
                  fontSize: 16,
                  color: darkGrey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: darkOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    labelButton,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
