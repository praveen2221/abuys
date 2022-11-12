import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../UIs/buyersearchPage.dart';

class SellerHomePage extends StatefulWidget {
  const SellerHomePage({Key? key}) : super(key: key);

  @override
  State<SellerHomePage> createState() => _SellerHomePageState();
}

class _SellerHomePageState extends State<SellerHomePage> {
  String dropdownvalue = 'Maincategory';
  // List of items in our dropdown menu
  var items = [
    'Maincategory',
    'Main_category1',
    'Main_category1',
  ];

  String dropdownvalues = 'Sub_category 1';
  var item = [
    'Sub_category 1',
  ];

  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print('Failed to pick image: $e');
    }
  }

  Future pickCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
              const SizedBox(height: 10),
              InkWell(
                onTap: () => pickImage(),
                child: SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: image == null
                          ? const Image(
                              image: AssetImage('assets/Group 51.png'))
                          : Image.file(
                              image!,
                              fit: BoxFit.fitWidth,
                            ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Ponni Raw Rice',
                  style: TextStyle(color: Colors.indigo, fontSize: 17),
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black26)),
                child: Row(
                  children: [
                    const Text('Market Price'),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 25.0),
                      child: Text('Rs'),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                        width: 100,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: '00.0',
                            contentPadding: EdgeInsets.all(5),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black26)),
                child: Row(
                  children: [
                    const Text('Seller Price'),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 25.0),
                      child: Text('Rs'),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                        width: 100,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: '00.0',
                            contentPadding: EdgeInsets.all(5),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black26)),
                child: Row(
                  children: [
                    const Text('Selling Quantity'),
                    const Spacer(),
                    const Text('Kg/litre'),
                    const SizedBox(width: 10),
                    SizedBox(
                        width: 100,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: '00.0',
                            contentPadding: EdgeInsets.all(5),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black26)),
                child: Row(
                  children: [
                    const Text('Total Price'),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 25.0),
                      child: Text('Rs'),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                        width: 100,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: '00.0',
                            contentPadding: EdgeInsets.all(5),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                label: const Padding(
                  padding: EdgeInsets.only(right: 80.0),
                  child: Text('Sell'),
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
                                      border: Border.all(color: Colors.black26),
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
                                              Text('SO1234 added successfully'),
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
                  backgroundColor: Colors.indigo,
                ),
                icon: const Padding(
                  padding: EdgeInsets.only(left: 80.0),
                  child: Icon(Icons.sell),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
