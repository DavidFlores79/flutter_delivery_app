import 'package:flutter/cupertino.dart';

class FilterProvider extends ChangeNotifier {
  List<CuisineButton> cuisineItems = [
    CuisineButton(label: 'Americana', isSelected: false),
    CuisineButton(label: 'Sushi', isSelected: false),
    CuisineButton(label: 'Pizza', isSelected: false),
    CuisineButton(label: 'Postres', isSelected: false),
    CuisineButton(label: 'FastFood', isSelected: false),
    CuisineButton(label: 'Hamburguesas', isSelected: false),
  ];

  List<SortByCheck> sortByItems = [
    SortByCheck(label: 'Mejor ranqueados', isSelected: false),
    SortByCheck(label: 'Cerca de mi', isSelected: false),
    SortByCheck(label: 'Costo Mayor a Menor', isSelected: false),
    SortByCheck(label: 'Costo Menor a Mayor', isSelected: false),
    SortByCheck(label: 'Más Populares', isSelected: false),
  ];

  List<FilterCheck> filterItems = [
    FilterCheck(label: 'Abierto Ahora', isSelected: false),
    FilterCheck(label: 'Tarjeta de Crédito', isSelected: false),
    FilterCheck(label: 'Bebidas Alcohólicas', isSelected: false),
  ];

  int _cuisineSelectedItem = 0;
  int _sortBySelectedItem = 0;
  int _filterSelectedItem = 0;

  int get cuisineSelectedItem {
    return this._cuisineSelectedItem;
  }

  set cuisineSelectedItem(int value) {
    this._cuisineSelectedItem = value;
    cuisineItems[cuisineSelectedItem].isSelected =
        !cuisineItems[cuisineSelectedItem].isSelected;
    notifyListeners();
  }

  int get sortBySelectedItem {
    return this._sortBySelectedItem;
  }

  set sortBySelectedItem(int value) {
    this._sortBySelectedItem = value;
    sortByItems[sortBySelectedItem].isSelected =
        !sortByItems[sortBySelectedItem].isSelected;
    notifyListeners();
  }

  int get filterSelectedItem {
    return this._filterSelectedItem;
  }

  set filterSelectedItem(int value) {
    this._filterSelectedItem = value;
    filterItems[filterSelectedItem].isSelected =
        !filterItems[filterSelectedItem].isSelected;
    notifyListeners();
  }

  resetCollections() {
    cuisineItems = resetCollection(cuisineItems);
    sortByItems = resetCollection(sortByItems);
    filterItems = resetCollection(filterItems);
    notifyListeners();
  }

  resetCollection(List<dynamic> collection) {
    collection.map((e) {
      e.isSelected = false;
      return e;
    }).toList();

    return collection;
  }
}

class CuisineButton<Widget> {
  String label;
  bool isSelected;

  CuisineButton({required this.label, required this.isSelected});
}

class SortByCheck<Widget> {
  String label;
  bool isSelected;

  SortByCheck({required this.label, required this.isSelected});
}

class FilterCheck<Widget> {
  String label;
  bool isSelected;

  FilterCheck({required this.label, required this.isSelected});
}
