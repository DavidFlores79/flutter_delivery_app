import 'package:flutter/cupertino.dart';

class OrderProvider extends ChangeNotifier {
  List<Order> currentOrder = [
    Order(
      restaurantName: 'McDonalds Mérida Américas',
      restaurantAddres:
          '327-329, Chedraui Plaza Las Americas, Calle 21 331 Mérida, Yucatán 97220',
      productName: 'McTrío Mediano Chicken Big Mac',
      specialRequest: 'Bebida Grande',
      isFreeDeliver: false,
      productPrice: 129.00,
      productQty: 1,
    ),
    Order(
      restaurantName: 'McDonalds Mérida Américas',
      restaurantAddres:
          '327-329, Chedraui Plaza Las Americas, Calle 21 331 Mérida, Yucatán 97220',
      productName: 'Cuarto de Libra + 10 McNuggets + Refresco Mediano',
      specialRequest: 'Coca Cola sin azucar',
      isFreeDeliver: false,
      productPrice: 154.00,
      productQty: 3,
    ),
    Order(
      restaurantName: 'El Buen Taco pensiones',
      restaurantAddres:
          'Av. Alfredo Barrera Vazquez 350, Jardines De Nueva Mulsay Ìii Iv Etapa, Mérida, Yucatán 97217',
      productName: 'torta Chuleta de Cerdo',
      specialRequest: 'extra Queso Manchego',
      isFreeDeliver: true,
      productPrice: 42.00,
      productQty: 2,
    ),
    Order(
      restaurantName: 'McDonalds Mérida Américas',
      restaurantAddres:
          '327-329, Chedraui Plaza Las Americas, Calle 21 331 Mérida, Yucatán 97220',
      productName: 'McTrío Mediano Chicken Big Mac',
      specialRequest: 'Bebida Grande',
      isFreeDeliver: false,
      productPrice: 129.00,
      productQty: 1,
    ),
    Order(
      restaurantName: 'McDonalds Mérida Américas',
      restaurantAddres:
          '327-329, Chedraui Plaza Las Americas, Calle 21 331 Mérida, Yucatán 97220',
      productName: 'Cuarto de Libra + 10 McNuggets + Refresco Mediano',
      specialRequest: 'Coca Cola sin azucar',
      isFreeDeliver: false,
      productPrice: 154.00,
      productQty: 3,
    ),
    Order(
      restaurantName: 'El Buen Taco pensiones',
      restaurantAddres:
          'Av. Alfredo Barrera Vazquez 350, Jardines De Nueva Mulsay Ìii Iv Etapa, Mérida, Yucatán 97217',
      productName: 'torta Chuleta de Cerdo',
      specialRequest: 'extra Queso Manchego',
      isFreeDeliver: true,
      productPrice: 42.00,
      productQty: 2,
    ),
  ];

  bool _isEmptyOrder = false;

  bool get isEmptyOrder {
    return this._isEmptyOrder;
  }

  set isEmptyOrder(bool value) {
    this._isEmptyOrder = value;
    notifyListeners();
  }
}

class Order {
  String restaurantName;
  String restaurantAddres;
  String productName;
  String specialRequest;
  double productQty;
  double productPrice;
  bool isFreeDeliver;

  Order({
    required this.restaurantName,
    required this.restaurantAddres,
    required this.productName,
    required this.specialRequest,
    required this.productQty,
    required this.productPrice,
    required this.isFreeDeliver,
  });
}
