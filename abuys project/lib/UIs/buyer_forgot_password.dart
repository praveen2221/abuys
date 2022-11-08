import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BuyerForgotPassword extends StatefulWidget {
  const BuyerForgotPassword({Key? key}) : super(key: key);

  @override
  State<BuyerForgotPassword> createState() => _BuyerForgotPasswordState();
}

class _BuyerForgotPasswordState extends State<BuyerForgotPassword> {
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  dynamic errorMessage = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Forgot Password',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo[600],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 40),
              Container(
                  alignment: Alignment.center,
                  height: 70,
                  child: const Image(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/abuysicon.png'),
                  )),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 25, 10, 0),
                child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.singleLineFormatter,
                    ],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email Address",
                    )),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/buyer');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500)),
                  child: const Text('Get OTP'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
