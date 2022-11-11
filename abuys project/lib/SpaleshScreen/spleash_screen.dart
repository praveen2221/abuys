import 'dart:async';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/login');
    });
    return Scaffold(
      body: Column(
        children: [
          const Image(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/Group.png'),
          ),
          Container(
              height: 55,
              width: 123,
              margin: const EdgeInsets.only(top: 40.0),
              child: const Image(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/abuysicon.png'),
              )),
          Container(
              margin: const EdgeInsets.only(top: 45.0),
              alignment: Alignment.center,
              height: 225,
              child: const Image(
                image: AssetImage('assets/image1.png'),
              )),
          const SizedBox(
            width: 200,
            child: LinearProgressIndicator(
              minHeight: 10,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
            ),
          ),
        ],
      ),
    );
  }
}
