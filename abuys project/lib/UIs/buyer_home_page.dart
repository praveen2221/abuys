import 'package:flutter/material.dart';

import 'buyersearchPage.dart';

class BuyerHomePage extends StatefulWidget {
  const BuyerHomePage({Key? key}) : super(key: key);

  @override
  State<BuyerHomePage> createState() => _BuyerHomePageState();
}

class _BuyerHomePageState extends State<BuyerHomePage> {
  String dropdownvalue = 'Subcategory';
  // List of items in our dropdown menu
  var items = [
    'Subcategory',
    '05 minutes',
    '10 minutes',
    '15 minutes',
    '20 minutes',
    '25 minutes',
  ];

  String dropdownvalues = 'Select Address';
  var item = [
    'Select Address',
    'Chennai',
    'Avadi',
    'Kolapakkam',
    'Bangalore',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                Navigator.pushNamed(context, '/sellerLogin');
              },
              icon: const Icon(
                Icons.logout_rounded,
                color: Colors.indigo,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const BuyerSearchPage()));
                        },
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/Ellipse 14.png'),
                        ),
                      ),
                      const Text(
                        'Vegetable',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const BuyerSearchPage()));
                        },
                        child: const CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/Ellipse 15.png',
                          ),
                        ),
                      ),
                      const Text(
                        'Fruits',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const BuyerSearchPage()));
                        },
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/Ellipse 16.png'),
                        ),
                      ),
                      const Text(
                        'Pulses',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const BuyerSearchPage()));
                        },
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/Ellipse 17.png'),
                        ),
                      ),
                      const Text(
                        'Oil',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const BuyerSearchPage()));
                        },
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/Ellipse 18.png'),
                        ),
                      ),
                      const Text(
                        'Others',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextField(
                cursorColor: Colors.indigo,
                decoration: InputDecoration(
                    fillColor: Colors.indigo[200],
                    filled: true,
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      gapPadding: 4,
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search',
                    hintStyle:
                        const TextStyle(color: Colors.black, fontSize: 18),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.indigo,
                    )),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.indigo[200],
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.centerRight,
                    child: DropdownButton(
                      borderRadius: BorderRadius.circular(15),
                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.indigo,
                      ),
                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.indigo[200],
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.centerRight,
                    child: DropdownButton(
                      borderRadius: BorderRadius.circular(20),
                      focusColor: Colors.indigo[200],
                      // Initial Value
                      value: dropdownvalues,

                      // Down Arrow Icon
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.indigo,
                      ),

                      // Array list of items
                      items: item.map((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalues = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              productNameTable(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget productNameTable(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        'Product Name / Location',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo[900],
                        ),
                      )
                    ],
                  ),
                ),
                FittedBox(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Table(
                          defaultColumnWidth: const FixedColumnWidth(50.0),
                          border: TableBorder.all(
                              color: Colors.black38,
                              style: BorderStyle.solid,
                              width: 3),
                          children: [
                            TableRow(children: [
                              Column(children: const [
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Text(
                                    'MP',
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ]),
                              Column(children: const [
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Text('15.00',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ]),
                            ]),
                            TableRow(children: [
                              Column(children: const [
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('Kg',
                                      style: TextStyle(
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.normal)),
                                )
                              ]),
                              Column(children: const [
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('650.00',
                                      style: TextStyle(
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.normal)),
                                )
                              ]),
                            ]),
                            TableRow(children: [
                              Column(children: const [
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('Rs',
                                      style: TextStyle(
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.normal)),
                                )
                              ]),
                              Column(children: const [
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('9230.00',
                                      style: TextStyle(
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.normal)),
                                )
                              ]),
                            ]),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 60,
                        child: Table(
                          defaultColumnWidth: const FixedColumnWidth(50.0),
                          border: TableBorder.all(
                              color: Colors.black38,
                              style: BorderStyle.solid,
                              width: 3),
                          children: [
                            TableRow(children: [
                              Column(children: const [
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Text(
                                    'MP',
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ]),
                              Column(children: const [
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Text('14.50',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ]),
                            ]),
                            TableRow(children: [
                              Column(children: const [
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('Kg',
                                      style: TextStyle(
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.normal)),
                                )
                              ]),
                              Column(children: const [
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('620.00',
                                      style: TextStyle(
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.normal)),
                                )
                              ]),
                            ]),
                            TableRow(children: [
                              Column(children: const [
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('Rs',
                                      style: TextStyle(
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.normal)),
                                )
                              ]),
                              Column(children: const [
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('.00',
                                      style: TextStyle(
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.normal)),
                                )
                              ]),
                            ]),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.bottomRight,
                        child: const Image(
                          image: AssetImage('assets/Rectangle 15.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/deliveryConformation');
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(200, 40),
                        backgroundColor: Colors.blue[900],
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        )),
                    child: const Text('Buy'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
