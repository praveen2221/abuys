import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SellerLogin extends StatefulWidget {
  const SellerLogin({Key? key}) : super(key: key);

  @override
  State<SellerLogin> createState() => _SellerLoginState();
}

class _SellerLoginState extends State<SellerLogin> {
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  dynamic errorMessage = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 40.0),
                  alignment: Alignment.center,
                  height: 70,
                  child: const Image(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/abuysicon.png'),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                alignment: Alignment.center,
                child: Text(
                  'Seller Login',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 40.0),
                  alignment: Alignment.topCenter,
                  child: const Image(
                    image: AssetImage('assets/Group 56.png'),
                  )),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 20),
                child: const Text('Name of the User'),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 25, 10, 0),
                child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.contact_page_outlined),
                      labelText: "Phone number",
                    )),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 25, 10, 0),
                child: const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                    )),
              ),
              // Text('${errorMessage}'),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sellerButtomNavigation');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500)),
                  child: const Text('Login'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/sellerforgotPassword');
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text('Forgotten Password?'),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.only(top: 100),
                child: const Text('Tamil | English'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
