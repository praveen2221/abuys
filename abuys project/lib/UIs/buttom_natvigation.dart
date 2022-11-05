import 'package:flutter/material.dart';

import 'buyer_home_page.dart';
import 'buyersearchPage.dart';
import 'seller_home_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List currentScreen = [
    const BuyerHomePage(),
    const SellerHomePage(),
    const SellerHomePage(),
    const SellerHomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
