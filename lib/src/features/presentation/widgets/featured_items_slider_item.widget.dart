import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';

class FeaturedSliderItem extends StatelessWidget {
  final int index;

  FeaturedSliderItem({
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(index);
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 250,
        // color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: FadeInImage(
                placeholder: AssetImage('assets/images/no-image.png'),
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8'),
                width: 250,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Peanut Chaat with Dahi',
              style: TextStyle(
                color: black,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              '\$ 99.00',
              style: TextStyle(
                color: grey,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
