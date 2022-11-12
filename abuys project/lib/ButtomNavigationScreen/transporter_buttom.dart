import 'package:flutter/material.dart';

import '../LoginScreen/buyer_Login.dart';
import '../Account_details/transporter_account_page.dart';
import '../HomePages/transporter_home_page.dart';
import '../SellectTransportPage/transportor_pickups.dart';

class TransporterButtomNaiveBar extends StatefulWidget {
  const TransporterButtomNaiveBar({Key? key}) : super(key: key);

  @override
  State<TransporterButtomNaiveBar> createState() =>
      _TransporterButtomNaiveBarState();
}

class _TransporterButtomNaiveBarState extends State<TransporterButtomNaiveBar> {
  int _selectedIndex = 0;
  final List _widgetOptions = [
    const TransporterHomePage(),
    const TransportorPickups(),
    const TransporterAccountPage(),
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
