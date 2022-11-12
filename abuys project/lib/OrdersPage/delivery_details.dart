import 'package:flutter/material.dart';

class DeliveryDetails extends StatefulWidget {
  const DeliveryDetails({Key? key}) : super(key: key);

  @override
  State<DeliveryDetails> createState() => _DeliveryDetailsState();
}

class _DeliveryDetailsState extends State<DeliveryDetails> {
  int current_step = 0;
  List<Step> steps = [
    const Step(
      title: Text('Step 1'),
      content: Text('Hello!'),
      isActive: true,
    ),
    const Step(
      title: Text('Step 2'),
      content: Text('World!'),
      isActive: true,
    ),
    const Step(
      title: Text('Step 3'),
      content: Text('Hello World!'),
      state: StepState.complete,
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.indigo,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/transportorpickups');
            },
          ),
          title: Text(
            ' abuys',
            style: TextStyle(
                color: Colors.indigo[600],
                fontSize: 25,
                fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/transporter');
                },
                icon: const Icon(
                  Icons.logout,
                  color: Colors.indigo,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 40, 20, 0),
                    child: Image(
                      image: AssetImage('assets/Vector.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: const Text(
                          'Delivery Order',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text('PO18379478/367867868'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                ), //
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Item Name',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.indigo[900],
                              fontFamily: 'RobotoMono-Reguar'),
                        ),
                        Text(
                          'PONNI RAW RICE',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.indigo[900],
                              fontFamily: 'RobotoMono-Reguar'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Amount Paid',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.indigo[900],
                              fontFamily: 'RobotoMono-Reguar'),
                        ),
                        Text(
                          'Rs.11600.00         ',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.indigo[900],
                              fontFamily: 'RobotoMono-Reguar'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                ), //             <--- BoxDecoration here
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: Text(
                            'Seller Address :',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'ID:N739',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'Name of the Seller',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 100,
                          child: Text(
                            'Location',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          alignment: Alignment.topRight,
                          width: 200,
                          child: const Image(
                            image: AssetImage('assets/Rectangle 14.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                ), //             <--- BoxDecoration here
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: Text(
                            'Transporter Details:',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 125,
                          child: Text(
                            'ID:N739',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 125,
                          child: Text(
                            'Name of the Driver',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          alignment: Alignment.topLeft,
                          width: 125,
                          child: Text(
                            'Vehicle Details',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          alignment: Alignment.topRight,
                          width: 200,
                          child: const Image(
                            image: AssetImage('assets/Rectangle 15.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Stepper(
                  currentStep: this.current_step,
                  steps: steps,
                  type: StepperType.vertical,
                  onStepTapped: (step) {
                    setState(() {
                      current_step = step;
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      if (current_step < steps.length - 1) {
                        current_step = current_step + 1;
                      } else {
                        current_step = 0;
                      }
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      if (current_step > 0) {
                        current_step = current_step - 1;
                      } else {
                        current_step = 0;
                      }
                    });
                  },
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.only(top: 10),
                child: const Text('Tamil | English'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
