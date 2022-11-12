import 'package:flutter/material.dart';

class MyAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.pushNamed(context, '/deliveryDetails');
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.check_circle,
              size: 40,
              color: Colors.white,
            ),
            SizedBox(width: 20),
            const Text(
              "Payment Processed\nSuccessfully!",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: const Text(
                "Thank you for the order",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
    actions: [
      okButton,
    ],
    elevation: 24,
    backgroundColor: Colors.indigo,
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
