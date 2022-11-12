import 'package:flutter/material.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  bool? _checkbox = true;
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
            Navigator.pushNamed(context, '/sellectTransportType');
          },
        ),
        title: const Text(
          'CheckOut',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w900,
            fontFamily: 'RobotoMono-Reguar',
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigo[900],
      ),
      body: Stack(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Delevery'),
                          Checkbox(
                            value: _checkbox,
                            onChanged: (value) {
                              setState(() {
                                _checkbox = _checkbox;
                              });
                            },
                          ),
                          const Text('Payment'),
                          Checkbox(
                            value: _checkbox,
                            onChanged: (value) {
                              setState(() {
                                _checkbox = _checkbox;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    child: Card(
                      color: Colors.green[200],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: Text(
                              'Get Extra 5% with MONEY bank Simply Save Credit card T&C',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Payment Method',
                        style: TextStyle(
                            fontFamily: 'RobotoMono-Reguar',
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 15, 0, 15),
                          child: Text('Wallet/UPI'),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 10, 15),
                          child: Icon(Icons.radio_button_checked),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 15, 0, 15),
                          child: Text('Net Banking'),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 10, 15),
                          child: Icon(Icons.radio_button_checked),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 15, 0, 15),
                          child: Text('Creadit / Debit / ATM Card'),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 10, 15),
                          child: Icon(Icons.radio_button_checked),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 15, 0, 15),
                          child: Text('Cash on Delivery'),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 10, 15),
                          child: Icon(Icons.radio_button_checked),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              child: Icon(Icons.info),
                            ),
                            SizedBox(width: 30),
                            Text('Total:'),
                            SizedBox(width: 20),
                            Text('560'),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.green),
                          ),
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/paymentPage');
                            },
                            child: const Text(
                              'PROCEED TO PAY',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.blue),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
