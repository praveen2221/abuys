import 'package:flutter/material.dart';

import '../Widgets/customButton.dart';

class MainSignupPage extends StatefulWidget {
  const MainSignupPage({Key? key}) : super(key: key);

  @override
  State<MainSignupPage> createState() => _MainSignupPageState();
}

class _MainSignupPageState extends State<MainSignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Column(
              children: [
                Center(
                  widthFactor: Checkbox.width,
                  child: Column(
                    children: [
                      customButton(
                        onClick: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        title: Container(
                          alignment: Alignment.center,
                          child: const Text(
                            'Buyer',
                            style: TextStyle(fontFamily: 'RobotoMono-Regular'),
                          ),
                        ),
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  widthFactor: Checkbox.width,
                  child: Column(
                    children: [
                      customButton(
                        onClick: () {
                          Navigator.pushNamed(context, '/sellerSignup');
                        },
                        title: Container(
                          alignment: Alignment.center,
                          child: const Text(
                            'Seller',
                            style: TextStyle(fontFamily: 'RobotoMono-Regular'),
                          ),
                        ),
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  widthFactor: Checkbox.width,
                  child: Column(
                    children: [
                      customButton(
                        onClick: () {
                          Navigator.pushNamed(context, '/transporterSignup');
                        },
                        title: Container(
                          alignment: Alignment.center,
                          child: const Text(
                            'Transportor',
                            style: TextStyle(fontFamily: 'RobotoMono-Regular'),
                          ),
                        ),
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  widthFactor: Checkbox.width,
                  child: Column(
                    children: [
                      customButton(
                        onClick: () {
                          Navigator.pushNamed(context, '/guarantorSignup');
                        },
                        title: Container(
                          alignment: Alignment.center,
                          child: const Text(
                            'Guarantor',
                            style: TextStyle(fontFamily: 'RobotoMono-Regular'),
                          ),
                        ),
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
                alignment: Alignment.center,
                child: const Text(
                  'Tamil | English',
                  style: TextStyle(fontFamily: 'RobotoMono-Regular'),
                )),
          ],
        ),
      ),
    );
  }
}
