import 'package:flutter/material.dart';

class SellerOrderPage extends StatefulWidget {
  const SellerOrderPage({Key? key}) : super(key: key);

  @override
  State<SellerOrderPage> createState() => _SellerOrderPageState();
}

class _SellerOrderPageState extends State<SellerOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.indigo,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '');
          },
        ),
        title: const Text(
          'abuys',
          style: TextStyle(
              color: Colors.indigo, fontSize: 20, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(
                Icons.logout_rounded,
                color: Colors.indigo,
              ))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
        child: Column(
          children: [
            Text(
              'Name of the Seller/Phone Number',
              style: TextStyle(
                fontSize: 20,
                color: Colors.indigo[900],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Your Orders',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[900],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Card(
                    color: Colors.indigo,
                    child: InkWell(
                      onTap: () {},
                      child: const ListTile(
                        leading: Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                        title: Text(
                          'PO64784838/343874788',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Card(
                    color: Colors.indigo,
                    child: InkWell(
                      onTap: () {},
                      child: const ListTile(
                        leading: Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                        title: Text(
                          'PO64784838/343874788',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: Container(
                      width: 200,
                      alignment: Alignment.center,
                      child: const Text('Proceed to Sell'),
                    ),
                    onPressed: () {
                      showModalBottomSheet<void>(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(17),
                            topRight: Radius.circular(17),
                          ),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return Stack(
                            children: [
                              const Image(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/Vector 1.png'),
                              ),
                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.clear),
                                    ),
                                  ),
                                  const Text(
                                    'Name of the Seller/Phone Number',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.indigo),
                                  ),
                                  const SizedBox(height: 100),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: SizedBox(
                                      height: 100,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black26),
                                        ),
                                        child: Row(
                                          children: [
                                            Center(
                                              child: Row(
                                                children: const [
                                                  SizedBox(width: 20),
                                                  Icon(
                                                    Icons.check_circle,
                                                    color: Colors.green,
                                                    size: 50,
                                                  ),
                                                  SizedBox(width: 10),
                                                  Text(
                                                      'SO1234 added successfully'),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Column(
                                    children: const [
                                      Center(
                                        child: Text('Thanks!'),
                                      ),
                                      Center(
                                        child: Text(
                                            'abuys will help you to sell the project'),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 40),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 30.0),
                      child: const Text('Tamil | English')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
