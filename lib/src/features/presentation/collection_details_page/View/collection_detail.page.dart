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
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  children: [
                    MainTitle(
                      title: '128 lugares',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
