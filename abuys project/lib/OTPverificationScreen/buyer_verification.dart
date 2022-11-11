import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class BuyerVerification extends StatefulWidget {
  const BuyerVerification({Key? key}) : super(key: key);

  @override
  State<BuyerVerification> createState() => _BuyerVerificationState();
}

class _BuyerVerificationState extends State<BuyerVerification> {
  bool _onEditing = true;
  String? _code;

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Enter OTP',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo[600],
      ),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 40.0),
              alignment: Alignment.center,
              height: 70,
              child: const Image(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/abuysicon.png'),
              )),
          VerificationCode(
            textStyle: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Theme.of(context).primaryColor),
            keyboardType: TextInputType.number,
            underlineColor: Colors
                .amber, // If this is null it will use primaryColor: Colors.red from Theme
            length: 4,
            cursorColor: Colors.blue,
            clearAll: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'clear all',
                style: TextStyle(
                    fontSize: 14.0,
                    decoration: TextDecoration.underline,
                    color: Colors.blue[700]),
              ),
            ),
            margin: const EdgeInsets.all(12),
            onCompleted: (String value) {
              setState(() {
                _code = value;
              });
            },
            onEditing: (bool value) {
              setState(() {
                _onEditing = value;
              });
              if (!_onEditing) FocusScope.of(context).unfocus();
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: _onEditing
                  ? const Text('Please enter full code')
                  : Text('Your code: $_code'),
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  textStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500)),
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
