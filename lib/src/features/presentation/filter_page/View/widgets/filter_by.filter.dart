import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';

import 'package:delivery_app/src/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilterCheckFilter extends StatelessWidget {
  const FilterCheckFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final filterProvider = Provider.of<FilterProvider>(context);
    List<FilterCheck> filterItems = filterProvider.filterItems;

    return Container(
      width: double.infinity,
      height: 320,
      // color: Colors.blue,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 5),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: filterItems.length,
              itemBuilder: (_, index) => listTileElements(
                item: filterItems[index],
                filterItems: filterItems,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class listTileElements extends StatelessWidget {
  final FilterCheck item;
  final List<FilterCheck> filterItems;

  const listTileElements(
      {super.key, required this.item, required this.filterItems});

  @override
  Widget build(BuildContext context) {
    final filterProvider = Provider.of<FilterProvider>(context);

    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: lightGrey),
        ),
      ),
      child: ListTile(
        onTap: () =>
            filterProvider.filterSelectedItem = filterItems.indexOf(item),
        title: MainTitle(
          title: item.label,
          fontSize: 16,
          color: item.isSelected ? darkOrange : darkGrey,
        ),
        trailing: item.isSelected
            ? const Icon(
                Icons.check_outlined,
                color: darkOrange,
              )
            : null,
      ),
    );
  }
}
