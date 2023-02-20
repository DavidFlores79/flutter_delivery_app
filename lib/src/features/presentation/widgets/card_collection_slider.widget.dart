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
              itemBuilder: (_, index) => const CardCollectionShow(),
            ),
          )
        ],
      ),
    );
  }
}

class CardCollectionShow extends StatelessWidget {
  const CardCollectionShow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 270,
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
              width: 270,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
