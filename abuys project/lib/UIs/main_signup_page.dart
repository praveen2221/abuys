import 'package:flutter/material.dart';

class MainSignupPage extends StatefulWidget {
  const MainSignupPage({Key? key}) : super(key: key);

  @override
  State<MainSignupPage> createState() => _MainSignupPageState();
}

class _MainSignupPageState extends State<MainSignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                margin: const EdgeInsets.only(top: 40.0),
                alignment: Alignment.center,
                height: 180,
                child: const Image(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                      'assets/Online shopping concept with shopping bags and trolley.png'),
                )),
            Container(
              width: 360,
              height: 50,
              color: Colors.blue[900],
              margin: const EdgeInsets.fromLTRB(0, 40, 0, 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500)),
                child: const Text('Buyer'),
              ),
            ),
            Container(
              width: 360,
              height: 50,
              margin: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sellerSignup');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500)),
                child: const Text('Seller'),
              ),
            ),
            Container(
              width: 360,
              height: 50,
              margin: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/transporterSignup');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500)),
                child: const Text('Transportor'),
              ),
            ),
            Container(
              width: 360,
              height: 50,
              margin: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/guarantorSignup');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500)),
                child: const Text('Guarantor'),
              ),
            ),
            Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 30.0),
                child: const Text('Tamil | English')),
          ],
        ),
      ),
    );
  }
}
