import 'package:abuys/UIs/seller_login.dart';
import 'package:flutter/material.dart';

import 'buyer_Login.dart';
import 'buyer_home_page.dart';
import 'my_account_page.dart';
import 'seller_account_page.dart';
import 'seller_home_page.dart';

class SellerButtomNavigation extends StatefulWidget {
  const SellerButtomNavigation({Key? key}) : super(key: key);

  @override
  State<SellerButtomNavigation> createState() => _SellerButtomNavigationState();
}

class _SellerButtomNavigationState extends State<SellerButtomNavigation> {
  int _selectedIndex = 0;
  final List _widgetOptions = [
    const SellerHomePage(),
    const SellerHomePage(),
    const SellerAccountPage(),
    const SellerLogin(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notification",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
