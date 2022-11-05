import 'package:flutter/material.dart';

import 'buyersearchPage.dart';

class BuyerHomePage extends StatefulWidget {
  const BuyerHomePage({Key? key}) : super(key: key);

  @override
  State<BuyerHomePage> createState() => _BuyerHomePageState();
}

class _BuyerHomePageState extends State<BuyerHomePage> {
  List gridItems = [
    'https://googleflutter.com/sample_image.jpg',
    'https://googleflutter.com/sample_image.jpg',
    'https://googleflutter.com/sample_image.jpg',
    'https://googleflutter.com/sample_image.jpg',
    'https://googleflutter.com/sample_image.jpg',
    'https://googleflutter.com/sample_image.jpg',
    'https://googleflutter.com/sample_image.jpg',
    'https://googleflutter.com/sample_image.jpg',
  ];
  List itemNames = [
    "fruits",
    'apple',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                    Icons.login_rounded,
                    color: Colors.indigo,
                  ))
            ],
          ),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemCount: gridItems.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const BuyerSearchPage()));
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(gridItems[index]),
                    ),
                  ),
                  const Text(
                    'vegetable',
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              );
            },
          )),
    );
  }
}
