import 'package:abuys/LoginScreen/seller_login.dart';
import 'package:flutter/material.dart';

import '../Account_details/guarantor_account_page.dart';
import '../HomePages/guarantor_home_page.dart';
import '../Account_details/seller_account_page.dart';
import '../HomePages/seller_home_page.dart';

class GuarantorButtomNavigation extends StatefulWidget {
  const GuarantorButtomNavigation({Key? key}) : super(key: key);

  @override
  State<GuarantorButtomNavigation> createState() =>
      _GuarantorButtomNavigationState();
}

class _GuarantorButtomNavigationState extends State<GuarantorButtomNavigation> {
  int _selectedIndex = 0;
  final List _widgetOptions = [
    const GuarantorHomePage(),
    const GuarantorAccountPage(),
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
