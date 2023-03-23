import 'package:delivery_app/src/features/presentation/pages.dart';
import 'package:flutter/material.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (context) => Welcome(),
  'search': (context) => const Search(),
  'filter': (context) => const Filter(),
  'login': (context) => Login(),
  'forgot-password': (context) => const ForgotPassword(),
  'register': (context) => const Register(),
  'home': (context) => const Home(),
};
