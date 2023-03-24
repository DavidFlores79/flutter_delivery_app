import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/pages.dart';
import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Collections extends StatelessWidget {
  static const String routeName = 'collections';

  List<CollectionModel> collections = [
    CollectionModel(
        label: 'Asiática',
        placesQty: 99,
        url:
            'https://images.pexels.com/photos/14469643/pexels-photo-14469643.jpeg?auto=compress&cs=tinysrgb&w=640&h=800&dpr=1'),
    CollectionModel(
        label: 'Americana',
        placesQty: 158,
        url:
            'https://images.pexels.com/photos/323682/pexels-photo-323682.jpeg?auto=compress&cs=tinysrgb&w=640&h=959&dpr=1'),
    CollectionModel(
        label: 'Sushi',
        placesQty: 71,
        url:
            'https://images.pexels.com/photos/1833349/pexels-photo-1833349.jpeg?auto=compress&cs=tinysrgb&w=640&h=960&dpr=1'),
    CollectionModel(
        label: 'Pizza',
        placesQty: 23,
        url:
            'https://images.pexels.com/photos/1211887/pexels-photo-1211887.jpeg?auto=compress&cs=tinysrgb&w=640&h=853&dpr=1'),
    CollectionModel(
        label: 'Postres',
        placesQty: 28,
        url:
            'https://images.pexels.com/photos/2983101/pexels-photo-2983101.jpeg?auto=compress&cs=tinysrgb&w=640&h=427&dpr=1'),
    CollectionModel(
        label: 'Hamburguesas',
        placesQty: 9,
        url:
            'https://images.pexels.com/photos/14469643/pexels-photo-14469643.jpeg?auto=compress&cs=tinysrgb&w=640&h=800&dpr=1'),
    CollectionModel(
        label: 'Mariscos',
        placesQty: 114,
        url:
            'https://images.pexels.com/photos/14469643/pexels-photo-14469643.jpeg?auto=compress&cs=tinysrgb&w=640&h=800&dpr=1'),
    CollectionModel(
        label: 'Cocina Cantonesa',
        placesQty: 78,
        url:
            'https://images.pexels.com/photos/14740600/pexels-photo-14740600.jpeg?auto=compress&cs=tinysrgb&w=640&h=960&dpr=1'),
    CollectionModel(
        label: 'Comida Cubana',
        placesQty: 15,
        url:
            'https://images.pexels.com/photos/14740600/pexels-photo-14740600.jpeg?auto=compress&cs=tinysrgb&w=640&h=960&dpr=1'),
    CollectionModel(
        label: 'Comida Árabe',
        placesQty: 18,
        url:
            'https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?auto=compress&cs=tinysrgb&w=640&h=896&dpr=1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: true,
          backgroundColor: white,
          title: const Text(
            'Colecciones',
            style: TextStyle(
              color: black,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Builder(
            builder: (context) {
              return const backButton(color: black);
            },
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 30,
          ),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: (1 / 1.2),
            children: collections
                .map(
                  (item) => _collectionCard(
                    label: item.label,
                    onPressed: () {},
                    placesQty: item.placesQty,
                    url: item.url,
                  ),
                )
                .toList(),
          ),
        )
      ],
    ));
  }
}

class _collectionCard extends StatelessWidget {
  String label;
  int placesQty;
  String url;
  final VoidCallback onPressed;

  _collectionCard({
    required this.label,
    required this.placesQty,
    required this.url,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double cardHeight = 190;
    double cardWidth = 165;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CollectionDetails.routeName);
        print(label);
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(
              width: cardWidth,
              height: cardHeight,
              fit: BoxFit.cover,
              image: NetworkImage(url),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromRGBO(0, 0, 0, 0.2),
            ),
            width: cardWidth,
            height: cardHeight,
            padding:
                EdgeInsets.only(bottom: cardHeight * 0.15, right: 2, left: 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                WhiteTextBlackShadow(
                  label: label,
                  fontSize: 20,
                ),
                WhiteTextBlackShadow(
                  label: '$placesQty lugares',
                  fontSize: 14,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CollectionModel<Widget> {
  String label;
  String url;
  int placesQty;

  CollectionModel({
    required this.label,
    required this.placesQty,
    required this.url,
  });
}
