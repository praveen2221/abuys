import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController doorNostreetNameController = TextEditingController();
  TextEditingController wardnumberController = TextEditingController();
  TextEditingController villagecityNameController = TextEditingController();
  TextEditingController talukController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController banknameController = TextEditingController();
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
          ' My Account',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigo[900],
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/transporter');
              },
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 40.0),
                  alignment: Alignment.topCenter,
                  height: 100,
                  child: const Image(
                    image: AssetImage('assets/abuysicon.png'),
                  )),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo[900],
                ),
                child: const Text(
                  'Personal Information',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: firstnameController,
                  decoration: const InputDecoration(
                    labelText: 'Name*',
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email*',
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: mobileNumberController,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: const InputDecoration(
                    labelText: 'Mobile Number*',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo[900],
                ),
                child: const Text(
                  'Address',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextField(
                controller: doorNostreetNameController,
                decoration: const InputDecoration(
                  labelText: 'Door Number & Street Name*',
                ),
              ),
              TextField(
                controller: wardnumberController,
                decoration: const InputDecoration(
                  labelText: 'Ward Number*',
                ),
              ),
              TextField(
                controller: villagecityNameController,
                decoration: const InputDecoration(
                  labelText: 'Village/City name*',
                ),
              ),
              TextField(
                controller: talukController,
                decoration: const InputDecoration(
                  labelText: 'Taluk*',
                ),
              ),
              TextField(
                controller: districtController,
                decoration: const InputDecoration(
                  labelText: 'District',
                ),
              ),
              TextField(
                controller: stateController,
                decoration: const InputDecoration(
                  labelText: 'State*',
                ),
              ),
              TextField(
                controller: pinCodeController,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: const InputDecoration(
                  labelText: 'PIN Code',
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  child: const ListTile(
                    leading: Icon(Icons.key),
                    title: Text('Change Password'),
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  child: const ListTile(
                    leading: Icon(Icons.settings_backup_restore),
                    title: Text('Clear History'),
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  child: const ListTile(
                    leading: Icon(Icons.delete),
                    title: Text(
                      'Deactivate Account',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
