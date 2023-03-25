import 'package:delivery_app/src/features/presentation/pages.dart';
import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      width: double.infinity,
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (_, index) => const CardShow(),
            ),
          )
        ],
      ),
    );
  }
}

class CardShow extends StatelessWidget {
  const CardShow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, PlaceDetails.routeName),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 200,
        // color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: FadeInImage(
                placeholder: AssetImage('assets/images/no-image.png'),
                image: NetworkImage(
                    'https://images.pexels.com/photos/9031943/pexels-photo-9031943.jpeg?auto=compress&cs=tinysrgb&w=640&h=960&dpr=1'),
                width: 200,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            CardText(
              address: 'La Cueva de las Ranas, tacos al pastor y carnes',
              name: 'La Cueva de las Ranas, tacos al pastor y carnes',
              reviews: '233 opiniones',
              isDeliver: true,
            ),
          ],
        ),
      ),
    );
  }
}
