import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/pages.dart';
import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ExploreTab extends StatefulWidget {
  const ExploreTab({super.key});

  @override
  State<ExploreTab> createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const TopBar(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  MainTitle(title: 'Descubre nuevos lugares'),
                  const CardSlider(),
                  MainTitleWithButton(
                    textButton: 'Mostrar Todos',
                    title: 'Populares',
                    onPressed: () {},
                  ),
                  const VerticalSlider(),
                  MainTitleWithButton(
                    textButton: 'Mostrar Todos',
                    title: 'Colecciones',
                    onPressed: () {
                      Navigator.pushNamed(context, Collections.routeName);
                    },
                  ),
                  const CardCollectionSlider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, Search.routeName),
            child: Container(
              width: size.width * 0.78,
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                color: lightGreyTransparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    color: grey,
                  ),
                  Text(
                    'Buscar',
                    style: TextStyle(fontSize: 16, color: grey),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: lightGrey,
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.line_weight_sharp,
                color: white,
                size: 25,
              ),
              onPressed: () => Navigator.pushNamed(context, Filter.routeName),
            ),
          ),
        )
      ],
    );
  }
}
