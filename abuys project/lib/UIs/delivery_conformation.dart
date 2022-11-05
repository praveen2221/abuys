
import 'package:flutter/material.dart';

class DeliveryConformation extends StatefulWidget {
  const DeliveryConformation({Key? key}) : super(key: key);

  @override
  State<DeliveryConformation> createState() => _DeliveryConformationState();
}

class _DeliveryConformationState extends State<DeliveryConformation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.indigo,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/transportorpickups');
            },
          ),
          title: Text(
            ' abuys',
            style: TextStyle(
                color: Colors.indigo[600],
                fontSize: 25,
                fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/transporter');
                },
                icon: const Icon(
                  Icons.logout,
                  color: Colors.indigo,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 40, 20, 0),
                    child: Image(
                      image: AssetImage('assets/Vector.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                        child: const Text(
                          'Delivery Order',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text('PO18379478/367867868'),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                ), //             <--- BoxDecoration here
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: Text(
                            'Seller Address :',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'ID:N739',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'Name of the Buyer',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'Door No',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'Street Name',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'Post',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'Pincode',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'Taluk',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          alignment: Alignment.topRight,
                          width: 200,
                          child: const Image(
                            image: AssetImage('assets/Rectangle 14.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                ), //             <--- BoxDecoration here
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: Text(
                            'Seller Address :',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'ID:N739',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'Name of the Buyer',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'Door No',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'Street Name',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'Post',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'Pincode',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'Taluk',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          alignment: Alignment.topRight,
                          width: 200,
                          child: const Image(
                            image: AssetImage('assets/Rectangle 15.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 360,
                height: 50,
                color: Colors.blue[900],
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500)),
                  child: const Text('Delivery Confirmed'),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.only(top: 10),
                child: const Text('Tamil | English'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedFontSize: 10,
          selectedIconTheme:
              const IconThemeData(color: Colors.indigoAccent, size: 40),
          selectedItemColor: Colors.indigoAccent,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
          unselectedIconTheme: const IconThemeData(
            color: Colors.black26,
          ),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
          ],
        ),
      ),
    );
  }
}
