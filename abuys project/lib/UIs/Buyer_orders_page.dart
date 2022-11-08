import 'package:flutter/material.dart';

class BuyerOrderPage extends StatefulWidget {
  const BuyerOrderPage({Key? key}) : super(key: key);

  @override
  State<BuyerOrderPage> createState() => _BuyerOrderPageState();
}

class _BuyerOrderPageState extends State<BuyerOrderPage> {
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
            Navigator.pushNamed(context, '/bottomNavigation');
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
                Navigator.pushNamed(context, '/buyerLogin');
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
              'Name of the Buyer/Phone Number',
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
                          Icons.more_rounded,
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
                          Icons.more_rounded,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.indigo,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                        child: const Text('Proceed to Buy'),
                      ),
                    ),
                  ),
                  Spacer(),
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
