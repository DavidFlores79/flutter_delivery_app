import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';

import 'package:delivery_app/src/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SortByCheckFilter extends StatelessWidget {
  const SortByCheckFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final filterProvider = Provider.of<FilterProvider>(context);
    List<SortByCheck> sortByItems = filterProvider.sortByItems;

    return Container(
      width: double.infinity,
      height: (sortByItems.length) * 65,
      // color: Colors.blue,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 5),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: sortByItems.length,
              itemBuilder: (_, index) => listTileElements(
                item: sortByItems[index],
                sortByItems: sortByItems,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class listTileElements extends StatelessWidget {
  final SortByCheck item;
  final List<SortByCheck> sortByItems;

  const listTileElements(
      {super.key, required this.item, required this.sortByItems});

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
            filterProvider.sortBySelectedItem = sortByItems.indexOf(item),
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
