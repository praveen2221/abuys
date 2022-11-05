import 'package:flutter/material.dart';

class BuyerSearchPage extends StatefulWidget {
  const BuyerSearchPage({Key? key}) : super(key: key);

  @override
  State<BuyerSearchPage> createState() => _BuyerSearchPageState();
}

class _BuyerSearchPageState extends State<BuyerSearchPage> {
  @override
  Widget build(BuildContext context) {
    String apptitle = "abuys";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          apptitle,
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
                Icons.notifications,
                color: Colors.indigo,
              ))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: TextField(
                    cursorColor: Colors.indigo,
                    decoration: InputDecoration(
                        fillColor: Colors.indigo[200],
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        hintText: 'Search',
                        hintStyle:
                            const TextStyle(color: Colors.black, fontSize: 18),
                        prefixIcon: Container(
                          padding: const EdgeInsets.all(15),
                          width: 18,
                          child: const Icon(
                            Icons.search,
                            color: Colors.indigo,
                          ),
                        )),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
