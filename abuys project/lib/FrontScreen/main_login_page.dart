import 'package:flutter/material.dart';

import '../Widgets/customButton.dart';

class MainLoginPage extends StatefulWidget {
  const MainLoginPage({Key? key}) : super(key: key);

  @override
  State<MainLoginPage> createState() => _MainLoginPageState();
}

class _MainLoginPageState extends State<MainLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                alignment: Alignment.center,
                height: 70,
                child: const Image(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/abuysicon.png'),
                )),
            Container(
                alignment: Alignment.center,
                height: 140,
                child: const Image(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/image2.png'),
                )),
            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.fromLTRB(160, 20, 0, 20),
                    child: Column(
                      children: [
                        customButton(
                          onClick: () {
                            Navigator.pushNamed(context, '/mainsignup');
                          },
                          title: const Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              'Create an Account',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'RobotoMono-Reguar'),
                            ),
                          ),
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Center(
                    widthFactor: Checkbox.width,
                    child: Column(
                      children: [
                        customButton(
                          onClick: () {
                            Navigator.pushNamed(context, '/buyerLogin');
                          },
                          title: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Buyer',
                              style:
                                  TextStyle(fontFamily: 'RobotoMono-Regular'),
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
                            Navigator.pushNamed(context, '/sellerLogin');
                          },
                          title: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Seller',
                              style:
                                  TextStyle(fontFamily: 'RobotoMono-Regular'),
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
                            Navigator.pushNamed(context, '/transporter');
                          },
                          title: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Transporter',
                              style:
                                  TextStyle(fontFamily: 'RobotoMono-Regular'),
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
                            Navigator.pushNamed(context, '/guarantor');
                          },
                          title: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Guarantor',
                              style:
                                  TextStyle(fontFamily: 'RobotoMono-Regular'),
                            ),
                          ),
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  'Tamil | English',
                  style: TextStyle(fontFamily: 'RobotoMono-Regular'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
