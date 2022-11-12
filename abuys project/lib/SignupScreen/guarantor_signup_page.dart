import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../Widgets/customButton.dart';

class GuarantorSignupPage extends StatefulWidget {
  const GuarantorSignupPage({Key? key}) : super(key: key);

  @override
  State<GuarantorSignupPage> createState() => _GuarantorSignupPageState();
}

class _GuarantorSignupPageState extends State<GuarantorSignupPage> {
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
  // ignore: non_constant_identifier_names
  TextEditingController ac_noController = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController ifsc_codeController = TextEditingController();
  TextEditingController branchController = TextEditingController();
  // ignore: non_constant_identifier_names
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
      // ignore: avoid_print
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
      // ignore: avoid_print
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
                    'Guarantor Signup',
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
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 130,
                    child: Column(
                      children: [
                        const Text('Upload ID Proof*'),
                        const SizedBox(height: 10),
                        customButton(
                          title: const Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                            child: Text('Upload'),
                          ),
                          onClick: pickImage,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 10),
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
                  ),
                  Container(
                    width: 130,
                    child: Column(
                      children: [
                        const Text('Upload Photo*'),
                        const SizedBox(height: 10),
                        customButton(
                          title: const Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                            child: Text('Upload'),
                          ),
                          onClick: getImage,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 10),
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
                                            AssetImage('assets/Group 51.png'))
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
                  ),
                ],
              ),
              const SizedBox(height: 10),
              customButton(
                onClick: () {
                  Navigator.pushNamed(context, '');
                },
                title: const Padding(
                  padding: EdgeInsets.only(left: 150.0),
                  child: Text('Sign Up'),
                ),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
