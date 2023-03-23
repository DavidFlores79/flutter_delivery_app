import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/filter_page/View/widgets/cuisines.filter.dart';
import 'package:delivery_app/src/features/presentation/filter_page/View/widgets/filter_by.filter.dart';
import 'package:delivery_app/src/features/presentation/filter_page/View/widgets/price_slider.filter.dart';
import 'package:delivery_app/src/features/presentation/filter_page/View/widgets/sort_by.filter.dart';
import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';
import 'package:delivery_app/src/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Filter extends StatefulWidget {
  static const String routeName = 'filter';

  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: CustomScrollView(slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: MainTitle(
                  title: 'Cocinas',
                  fontSize: 18,
                  color: grey,
                ),
              ),
              const CuisinesFilter(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: MainTitle(
                  title: 'Ordenado por...',
                  fontSize: 18,
                  color: grey,
                ),
              ),
              const SortByCheckFilter(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: MainTitle(
                  title: 'Filtros',
                  fontSize: 18,
                  color: grey,
                ),
              ),
              const FilterCheckFilter(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: MainTitle(
                  title: 'Precios',
                  fontSize: 18,
                  color: grey,
                ),
              ),
              PriceFilter(),
            ],
          ),
        )
      ]),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    final filterProvider = Provider.of<FilterProvider>(context);

    return AppBar(
      centerTitle: true,
      foregroundColor: black,
      elevation: 0.5,
      backgroundColor: white,
      title: const Text(
        'Filtros',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: TextButton(
        onPressed: () {
          filterProvider.resetCollections();
        },
        child: const Text(
          'Reset',
          style: TextStyle(
            color: black,
            fontSize: 15,
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'Hecho',
            style: TextStyle(
              color: darkOrange,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
