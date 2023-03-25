import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FavouriteCard extends StatelessWidget {
  final String name;
  final String address;
  final String reviews;
  final bool isDeliver;
  final bool isFavourite;

  const FavouriteCard({
    required this.name,
    required this.address,
    required this.reviews,
    required this.isDeliver,
    required this.isFavourite,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      elevation: 5,
      child: Container(
        height: 120,
        padding: const EdgeInsets.only(left: 12, top: 5, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: FadeInImage(
                placeholder: AssetImage('assets/images/no-image.png'),
                image: NetworkImage(
                    'https://images.pexels.com/photos/6287527/pexels-photo-6287527.jpeg?auto=compress&cs=tinysrgb&w=640&h=427&dpr=1'),
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            FavouriteCardText(
              name: name,
              address: address,
              reviews: reviews,
              isDeliver: isDeliver,
            ),
            IconButton(
              padding: const EdgeInsets.all(0),
              splashRadius: 20,
              onPressed: () {},
              icon: isFavourite
                  ? const Icon(
                      Icons.bookmark,
                      color: red,
                    )
                  : const Icon(
                      Icons.bookmark_border_outlined,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
