import 'package:flutter/material.dart';

import '../OrdersPage/Buyer_orders_page.dart';
import '../LoginScreen/buyer_Login.dart';
import '../HomePages/buyer_home_page.dart';
import '../Account_details/myAccount_details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List _widgetOptions = [
    const BuyerHomePage(),
    const BuyerOrderPage(),
    const MyAccountPage(),
    const BuyerLogin(),
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
            label: "Notifications",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
