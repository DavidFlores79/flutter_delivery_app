import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class VerticalSlider extends StatelessWidget {
  const VerticalSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 680,
      // color: Colors.blue,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
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
    final size = MediaQuery.of(context).size;

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
                  'https://images.unsplash.com/photo-1505253668822-42074d58a7c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8'),
              height: 100,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          CardText(
            name: 'La fonda de la Tia Chona. La mejor del POniente',
            address: 'Calle 43 325 x 18 Juan Pablo II',
            ratings: '19 opiniones',
            isDeliver: false,
          )
        ],
      ),
    );
  }
}
