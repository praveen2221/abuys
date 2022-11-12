// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Widgets/customButton.dart';

class BuyerLogin extends StatefulWidget {
  const BuyerLogin({Key? key}) : super(key: key);

  @override
  State<BuyerLogin> createState() => _BuyerLoginState();
}

class _BuyerLoginState extends State<BuyerLogin> {
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  dynamic errorMessage = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
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
                'Buyer Login',
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: const InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                    labelText: "Phone number",
                  )),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: const TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Password",
                  )),
            ),
            // Text('${errorMessage}'),
            SizedBox(height: 20),
            Center(
              widthFactor: Checkbox.width,
              child: Column(
                children: [
                  customButton(
                    onClick: () {
                      Navigator.pushNamed(context, '/bottomNavigation');
                    },
                    title: Container(
                      alignment: Alignment.center,
                      child: Text('Login'),
                    ),
                    color: Colors.white,
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/forgotPassword");
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 10),
                child: const Text('Forgotten Password?'),
              ),
            ),
            Column(
              children: const [
                Center(
                  child: Text('Tamil | English'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
