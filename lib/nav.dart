import 'package:crypto_app/screens/home_screen.dart';
import 'package:crypto_app/screens/profile_screen.dart';
import 'package:crypto_app/screens/search_screen.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}
class _home_pageState extends State<home_page> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final screens = [
    const ProfileScreen(),
    HomeScreen(),
    const SearchScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      //bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            label: 'search',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor:const Color.fromARGB(255, 182, 182, 182),
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
        backgroundColor: const Color.fromARGB(223, 16, 16, 16),
      ),
    );
  }
}
