import 'package:flutter/material.dart';

class MainLoginPage extends StatefulWidget {
  const MainLoginPage({Key? key}) : super(key: key);

  @override
  State<MainLoginPage> createState() => _MainLoginPageState();
}

class _MainLoginPageState extends State<MainLoginPage> {
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
                height: 140,
                child: const Image(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/image2.png'),
                )),
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.fromLTRB(0, 20, 25, 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/mainsignup');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500)),
                child: const Text('Create an Account'),
              ),
            ),
            Container(
              width: 360,
              height: 50,
              color: Colors.blue[900],
              margin: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/buyerLogin');
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
                  Navigator.pushNamed(context, '/sellerLogin');
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
                  Navigator.pushNamed(context, '/transporter');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500)),
                child: const Text('Transporter'),
              ),
            ),
            Container(
              width: 360,
              height: 50,
              margin: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/guarantor');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500)),
                child: const Text('Guarantor'),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.only(top: 30),
              child: const Text('Tamil | English'),
            ),
          ],
        ),
      ),
    );
  }
}
