import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';

class CardText extends StatelessWidget {
  final String name;
  final String address;
  final String reviews;
  final bool isDeliver;

  const CardText({
    Key? key,
    required this.name,
    required this.address,
    required this.reviews,
    required this.isDeliver,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 250),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: darkGrey),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              address,
              style: const TextStyle(
                  fontSize: 15, fontWeight: FontWeight.normal, color: grey),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                // Row(
                //   mainAxisSize: MainAxisSize.min,
                //   children: [
                //     Icon(Icons.star, color: orange, size: 16,),
                //     Icon(Icons.star, color: orange, size: 16,),
                //     Icon(Icons.star, color: orange, size: 16,),
                //     const Icon(Icons.star, color: Colors.black, size: 16,),
                //     const Icon(Icons.star, color: Colors.black, size: 16,),
                //   ],
                // ),
                const Icon(
                  Icons.star,
                  color: orange,
                  size: 16,
                ),
                const SizedBox(width: 3),
                const Text(
                  '4.8',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: darkGrey),
                ),
                const SizedBox(width: 5),
                Text(
                  reviews,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.normal, color: grey),
                ),
                const SizedBox(
                  width: 7,
                ),
                (isDeliver)
                    ? Container(
                        padding: const EdgeInsets.all(3),
                        width: 33,
                        height: 33,
                        decoration: const BoxDecoration(
                            color: darkOrange,
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        child: const Image(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/icons/deliver.png'),
                          width: 15,
                          height: 15,
                        ),
                      )
                    : Container(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
