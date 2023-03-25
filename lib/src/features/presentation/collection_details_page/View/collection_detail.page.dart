import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CollectionDetails extends StatelessWidget {
  static const String routeName = 'collection_details';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
            expandedHeight: size.height * 0.25,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: const Image(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/5491000/pexels-photo-5491000.jpeg?auto=compress&cs=tinysrgb&w=640&h=427&dpr=1'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: const Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                  const Center(
                    child: WhiteTextBlackShadow(
                      label: 'Asian Restaurant',
                      fontSize: 28,
                    ),
                  )
                ],
              ),
            ),
            leading: Builder(
              builder: (context) => const backButton(color: white),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const FavouriteCard(
                address: 'Calle 22 413 Local 4 Fracc Juan Pablo II',
                isDeliver: true,
                name:
                    "Domino's Pizza añlsdk ñaldksñ aldksñ adkls adlja lskdj lasdkjla djlads",
                reviews: '138 opiniones',
                isFavourite: true,
              ),
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
