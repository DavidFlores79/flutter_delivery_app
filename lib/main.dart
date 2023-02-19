import 'package:delivery_app/pages/pages.dart';
import 'package:delivery_app/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App',
      routes: routes,
      initialRoute: Welcome.routeName,
    );
  }
}