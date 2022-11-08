import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../Utils/custom_button.dart';

class TransporterSignupPage extends StatefulWidget {
  const TransporterSignupPage({Key? key}) : super(key: key);

  @override
  State<TransporterSignupPage> createState() => _TransporterSignupPageState();
}

class _TransporterSignupPageState extends State<TransporterSignupPage> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController profileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController doorNostreetNameController = TextEditingController();
  TextEditingController wardnumberController = TextEditingController();
  TextEditingController villagecityNameController = TextEditingController();
  TextEditingController talukController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController banknameController = TextEditingController();
  TextEditingController ac_noController = TextEditingController();
  TextEditingController ifsc_codeController = TextEditingController();
  TextEditingController branchController = TextEditingController();
  TextEditingController bank_pincodeController = TextEditingController();

  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  File? _image;
  Future getImage() async {
    try {
      final _image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (_image == null) return;
      final imageTemp = File(_image.path);
      setState(() => this._image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
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
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: firstnameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.indigo),
                    labelText: 'Name*',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.indigo),
                    labelText: 'Email*',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: profileController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.indigo),
                    labelText: 'Profile*',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.indigo),
                    labelText: 'Password*',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  maxLength: 10,
                  controller: mobileNumberController,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.call, color: Colors.indigo),
                    labelText: 'Mobile Number*',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: doorNostreetNameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.location_on, color: Colors.indigo),
                    labelText: 'Door Number & Street Name*',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: wardnumberController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.location_on, color: Colors.indigo),
                    labelText: 'Ward Number*',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: villagecityNameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.location_on, color: Colors.indigo),
                    labelText: 'Village/City name*',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: talukController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.location_on, color: Colors.indigo),
                    labelText: 'Taluk*',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: districtController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.location_on, color: Colors.indigo),
                    labelText: 'District',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: stateController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.location_on, color: Colors.indigo),
                    labelText: 'State*',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: pinCodeController,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.location_on, color: Colors.indigo),
                    labelText: 'PIN Code',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: banknameController,
                  decoration: const InputDecoration(
                    labelText: 'Bank Name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: ac_noController,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: const InputDecoration(
                    labelText: 'Account Number',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: ifsc_codeController,
                  decoration: const InputDecoration(
                    labelText: 'IFSC code',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: branchController,
                  decoration: const InputDecoration(
                    labelText: 'Branch',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  border: Border(),
                ),
                child: TextField(
                  controller: bank_pincodeController,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: const InputDecoration(
                    labelText: 'Bank Address PINCode',
                  ),
                ),
              ),
              Column(children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text('Upload ID Proof*'),
                          customButton(
                            title: 'Upload',
                            onClick: pickImage,
                          ),
                          InkWell(
                            onTap: () => pickImage(),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black26)),
                                child: Center(
                                  child: image == null
                                      ? const Image(
                                          image:
                                              AssetImage('assets/Group 51.png'))
                                      : Image.file(
                                          image!,
                                          fit: BoxFit.fitWidth,
                                        ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Upload Photo*'),
                          customButton(
                            title: 'Upload',
                            onClick: getImage,
                          ),
                          InkWell(
                            onTap: () => getImage(),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black26)),
                                child: Center(
                                  child: _image == null
                                      ? const Image(
                                          image:
                                              AssetImage('assets/Group 51.png'),
                                        )
                                      : Image.file(
                                          _image!,
                                          fit: BoxFit.fitWidth,
                                        ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
              Container(
                  height: 50,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Sign Up'),
                    onPressed: () {},
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
