import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  static const String routeName = 'search';

  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: white,
            leading: IconButton(
              icon: Icon(Icons.close),
              color: black,
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      MainTitle(title: 'Buscar'),
                      const SearchInput(),
                      MainTitleWithButton(
                        title: 'Búsquedas recientes',
                        textButton: 'Borrar',
                        fontSize: 23,
                        onPressed: () {},
                      ),
                      const CardSliderRecent(),
                      MainTitle(
                        title: 'Recomendado para ti',
                        fontSize: 23,
                      ),
                      const VerticalSlider(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5.0),
      decoration: BoxDecoration(
        color: lightGreyTransparent,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: const TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Buscar restaurantes',
            hintStyle: TextStyle(
              color: grey,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: grey,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
