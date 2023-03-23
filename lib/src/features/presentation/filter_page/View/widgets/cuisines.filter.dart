import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CuisinesFilter extends StatelessWidget {
  const CuisinesFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final filterProvider = Provider.of<FilterProvider>(context);
    List<CuisineButton> cuisineItems = filterProvider.cuisineItems;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        direction: Axis.horizontal,
        children: cuisineItems
            .map(
              (item) => _cuisineButton(
                textLabel: item.label,
                onPressed: () => filterProvider.cuisineSelectedItem =
                    cuisineItems.indexOf(item),
                isSelected: item.isSelected,
              ),
            )
            .toList(),
      ),
    );
  }
}

class _cuisineButton extends StatelessWidget {
  String textLabel;
  bool isSelected;
  final VoidCallback onPressed;

  _cuisineButton({
    Key? key,
    required this.textLabel,
    this.isSelected = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.all<Color>(white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: isSelected ? darkOrange : white),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        textLabel,
        style: TextStyle(
          fontSize: 16,
          color: isSelected ? darkOrange : grey,
        ),
      ),
    );
  }
}
