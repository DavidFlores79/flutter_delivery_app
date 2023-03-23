import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class VerticalSlider extends StatelessWidget {
  const VerticalSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 430,
      // color: Colors.blue,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 5),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (_, index) => VerticalCard(),
            ),
          )
        ],
      ),
    );
  }
}

class VerticalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 110,
      // color: Colors.red,
      child: Row(
        children: const [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: FadeInImage(
              placeholder: AssetImage('assets/images/no-image.png'),
              image: NetworkImage(
                  'https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?auto=compress&cs=tinysrgb&w=640&h=896&dpr=1'),
              height: 100,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          CardText(
            name: 'La fonda de la Tia Chona. La mejor del Poniente',
            address: 'Calle 43 325 x 18 Juan Pablo II',
            reviews: '14 opiniones',
            isDeliver: false,
          )
        ],
      ),
    );
  }
}
