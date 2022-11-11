import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GuarantorHomePage extends StatefulWidget {
  const GuarantorHomePage({Key? key}) : super(key: key);

  @override
  State<GuarantorHomePage> createState() => _GuarantorHomePageState();
}

class _GuarantorHomePageState extends State<GuarantorHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/transporter');
          },
        ),
        title: const Text(
          'Guarantor',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigo[900],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            'No data Found',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
