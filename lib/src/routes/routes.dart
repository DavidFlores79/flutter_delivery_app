import 'package:delivery_app/src/features/presentation/pages.dart';
import 'package:flutter/material.dart';

final routes = <String, WidgetBuilder>{
  Welcome.routeName: (context) => Welcome(),
  Search.routeName: (context) => const Search(),
  Filter.routeName: (context) => const Filter(),
  Collections.routeName: (context) => Collections(),
  Login.routeName: (context) => Login(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
  Register.routeName: (context) => const Register(),
  Home.routeName: (context) => const Home(),
};
