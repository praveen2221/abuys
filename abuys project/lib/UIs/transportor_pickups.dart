import 'package:flutter/material.dart';

class TransportorPickups extends StatefulWidget {
  const TransportorPickups({Key? key}) : super(key: key);

  @override
  State<TransportorPickups> createState() => _TransportorPickupsState();
}

class _TransportorPickupsState extends State<TransportorPickups> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.indigo,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/transporter');
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
              Container(
                margin: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                child: Text(
                  'Pick Ups',
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(30),
                          child: Image(
                            image: AssetImage('assets/Vector.png'),
                          ),
                        ),
                        Column(
                          children: const [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Delivery Order',
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'PO18379478/367867868',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/deliveryConformation');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                          child: const Text('PickUp'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/deliveryConformation');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                          child: const Text('Forward'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(30),
                          child: Image(
                            image: AssetImage('assets/Vector.png'),
                          ),
                        ),
                        Column(
                          children: const [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Delivery Order',
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'PO18379478/367867868',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/deliveryConformation');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                          child: const Text('PickUp'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/deliveryConformation');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                          child: const Text('Forward'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
                          child: Image(
                            image: AssetImage('assets/Vector.png'),
                          ),
                        ),
                        Column(
                          children: const [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Delivery Order',
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'PO18379478/367867868',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/deliveryConformation');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                          child: const Text('PickUp'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/deliveryConformation');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                          child: const Text('Forward'),
                        ),
                      ],
                    ),
                  ],
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
