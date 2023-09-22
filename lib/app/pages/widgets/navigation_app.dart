
import 'package:flutter/material.dart';

import '../home_pages.dart';
import '../new_item_page.dart';
import '../search_page.dart';

class BottomNavigationApp extends StatefulWidget {
  const BottomNavigationApp({super.key});

  @override
  State<BottomNavigationApp> createState() => _BottomNavigationAppState();
}

class _BottomNavigationAppState extends State<BottomNavigationApp> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.indigoAccent,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color.fromARGB(255, 217, 220, 238),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.new_label_outlined),
            label: 'Novo',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.school),
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: const HomePage(labelTab: ["Futuros", "Recentes"], initial: 1, length: 2),
        ),
        Container(
          alignment: Alignment.center,
          child: const NewItemPage(),
        ),
        Container(
          alignment: Alignment.center,
          child: const SearchPage(),
        ),
      ][currentPageIndex],
    );
  }
}
