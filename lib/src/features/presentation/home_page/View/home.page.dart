import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/tabs/tabs.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const String routeName = 'home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //lista de tabs
  final List<Widget> _widgetOptions = [
    const ExploreTab(),
    const MyOrderTab(),
    const FavouritesTab(),
    const ProfileTab(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (value) {
        _selectedIndex = value;
        setState(() {});
      },
      iconSize: 30,
      selectedItemColor: orange,
      unselectedItemColor: grey,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined), label: 'Explora'),
        BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined), label: 'Mi Orden'),
        BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined), label: 'Favoritos'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Perfil'),
      ],
    );
  }
}
