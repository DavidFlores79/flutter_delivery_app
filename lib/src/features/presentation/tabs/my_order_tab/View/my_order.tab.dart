import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/widgets/backbutton.widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/main_title.widget.dart';
import 'package:delivery_app/src/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyOrderTab extends StatefulWidget {
  const MyOrderTab({super.key});

  @override
  State<MyOrderTab> createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context);
    final isEmptyOrder = orderProvider.isEmptyOrder;

    return Scaffold(
      appBar: AppBar(
        leading: const backButton(color: black),
        centerTitle: true,
        title: const Text(
          'Mi Orden',
          style: TextStyle(color: black),
        ),
        elevation: 0,
        backgroundColor: transparent,
      ),
      body: (isEmptyOrder) ? EmptyOrder() : CurrentOrder(),
    );
  }
}

class EmptyOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: (size.width * 0.1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: const AssetImage('assets/icons/empty_basket.png'),
            width: size.width * 0.4,
          ),
          const SizedBox(height: 40),
          const Text(
            'Carrito Vacío',
            style: TextStyle(
              color: grey,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              fontFamily: 'Avenir85',
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          const Text(
            'Siempre estamos cocinando algo especial para ti! Adelante, ordena algo delicioso de nuestro menú.',
            style: TextStyle(
              color: grey,
              fontSize: 17,
              fontWeight: FontWeight.normal,
              letterSpacing: 2,
              fontFamily: 'Avenir85',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class CurrentOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orderProvider = Provider.of<OrderProvider>(context);
    List<Order> currentOrder = orderProvider.currentOrder;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            height: currentOrder.length * 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10.0, // shadow blur
                    color: grey, // shadow color
                    offset: Offset(2.0, 5.0),
                  )
                ]),
            child: Expanded(
              child: ListView.builder(
                itemCount: currentOrder.length,
                itemBuilder: (context, index) {
                  final orderDetail = currentOrder[index];
                  return OrderDetail(orderDetail: orderDetail);
                },
              ),
            ),
          ),
          Container(
            color: white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Subtotal',
                      style: TextStyle(color: grey, fontSize: 17),
                    ),
                    Text(
                      '\$93.40',
                      style: TextStyle(color: grey, fontSize: 17),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Impuestos I.V.A',
                      style: TextStyle(color: grey, fontSize: 17),
                    ),
                    Text(
                      '\$12.96',
                      style: TextStyle(color: grey, fontSize: 17),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Devlivery',
                      style: TextStyle(color: grey, fontSize: 17),
                    ),
                    Text(
                      'Free',
                      style: TextStyle(color: grey, fontSize: 17),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrderDetail extends StatelessWidget {
  final Order orderDetail;

  OrderDetail({
    required this.orderDetail,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(15),
      //   color: lightGrey,
      // ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                orderDetail.restaurantName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: black,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              _placeAddress(
                address: orderDetail.restaurantAddres,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: size.width * 0.7,
                    ),
                    child: Text(
                      orderDetail.productName,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: darkGrey,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    '\$${orderDetail.productPrice}',
                    style: const TextStyle(
                      color: grey,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _placeAddress extends StatelessWidget {
  final address;

  _placeAddress({
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      children: [
        const Icon(
          Icons.location_on,
          size: 20,
          color: grey,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: size.width - 100,
          ),
          child: Text(
            address,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: darkGrey,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
