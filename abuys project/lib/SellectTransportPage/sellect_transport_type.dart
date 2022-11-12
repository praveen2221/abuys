import 'package:flutter/material.dart';

class SellectTransportType extends StatefulWidget {
  const SellectTransportType({Key? key}) : super(key: key);

  @override
  State<SellectTransportType> createState() => _SellectTransportTypeState();
}

class _SellectTransportTypeState extends State<SellectTransportType> {
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
            Navigator.pushNamed(context, '/buyerProductDetails');
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Select Transport type',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.indigo[900],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 150,
                        height: 150,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black26)),
                          child: const Center(
                            child: Image(
                                fit: BoxFit.fitWidth,
                                image: AssetImage('assets/Group 51.png')),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: SizedBox(
                              width: 150,
                              height: 150,
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black26)),
                                child: const Center(
                                  child: Image(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage('assets/Group 51.png')),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 150,
                        height: 150,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black26)),
                          child: const Center(
                            child: Image(
                                fit: BoxFit.fitWidth,
                                image: AssetImage('assets/Group 51.png')),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: SizedBox(
                              width: 150,
                              height: 150,
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black26)),
                                child: const Center(
                                  child: Image(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage('assets/Group 51.png')),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black26)),
                  child: Row(
                    children: const [
                      Text('Seller Price'),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 25.0),
                        child: Text('Rs.   11600.00'),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/checkOutPage');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
              ),
              label: const Text('Buy'),
              icon: const Icon(Icons.shopping_cart_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
