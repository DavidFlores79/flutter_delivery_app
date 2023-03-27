import 'package:delivery_app/src/features/presentation/pages.dart';
import 'package:delivery_app/src/providers/filter.provider.dart';
import 'package:delivery_app/src/providers/order.provider.dart';
import 'package:delivery_app/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => FilterProvider())),
        ChangeNotifierProvider(create: ((context) => OrderProvider()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Delivery App',
        routes: routes,
        initialRoute: Welcome.routeName,
      ),
    );
  }
}
