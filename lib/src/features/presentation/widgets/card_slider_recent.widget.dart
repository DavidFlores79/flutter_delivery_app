import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardSliderRecent extends StatelessWidget {
  const CardSliderRecent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      width: double.infinity,
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_, index) => const CardImageText(),
            ),
          )
        ],
      ),
    );
  }
}

class CardImageText extends StatelessWidget {
  const CardImageText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 210,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: FadeInImage(
              placeholder: AssetImage('assets/images/no-image.png'),
              image: NetworkImage(
                  'https://images.pexels.com/photos/842519/pexels-photo-842519.jpeg?auto=compress&cs=tinysrgb&w=640&h=423&dpr=1'),
              width: 200,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          CardText(
            name: 'Restaurant Calle 60',
            address: 'Calle 60 x 16 Centro',
            reviews: '7 opiniones',
            isDeliver: false,
          )
        ],
      ),
    );
  }
}
