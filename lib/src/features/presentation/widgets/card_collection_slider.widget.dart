import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardCollectionSlider extends StatelessWidget {
  const CardCollectionSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      width: double.infinity,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (_, index) => const CardCollectionItem(),
            ),
          )
        ],
      ),
    );
  }
}
