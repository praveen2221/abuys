import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
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
                child: TextField(
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      labelText: "Phone number",
                    )),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 25, 10, 0),
                child: const TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
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
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/bottomNavigation');
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
                  Navigator.pushNamed(context, "/forgotPassword");
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text('Forgotten Password?'),
                ),
              ),
              const Spacer(),
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
      ),
    );
  }
}
