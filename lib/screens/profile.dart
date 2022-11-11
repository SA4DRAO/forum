import 'package:circular_placeholder/circular_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:validation_textformfield/validation_textformfield.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: const Color(0xff111111),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            'assets/images/ArrowLeft.png',
            alignment: Alignment.center,
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 120,
            child: CircularPlaceholder(
              color: Colors.green,
            ),
          ),
          Expanded(
            child: ListView(children: const [
              NameField(),
              EmailField(),
              PhoneField(),
            ]),
          ),
        ]),
      ),
    );
  }
}

class NameField extends StatelessWidget {
  const NameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "NAME:",
            style: TextStyle(
              fontFamily: 'SpaceGrotesk',
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: const TextField(
              style: TextStyle(
                fontFamily: 'Satoshi',
                color: Colors.white,
                fontSize: 16,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Color(0xff1D1D1D),
                hintText: 'Enter Your Name',
                hintStyle: TextStyle(
                  fontFamily: 'Satoshi',
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "EMAIL:",
            style: TextStyle(
              fontFamily: 'SpaceGrotesk',
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 8),
              child: const EmailValidationTextField(
                whenTextFieldEmpty: "Please enter  email",
                validatorMassage: "Please enter valid email",
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color(0xff1D1D1D),
                ),
              ))
        ],
      ),
    );
  }
}

class PhoneField extends StatelessWidget {
  const PhoneField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "PHONE:",
            style: TextStyle(
              fontFamily: 'SpaceGrotesk',
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: IntlPhoneField(
              dropdownTextStyle: const TextStyle(
                fontFamily: 'Satoshi',
                color: Colors.white,
                fontSize: 16,
              ),
              showCountryFlag: true,
              initialCountryCode: "IN",
              style: const TextStyle(
                fontFamily: 'Satoshi',
                color: Colors.white,
                fontSize: 16,
              ),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Color(0xff1D1D1D),
                hintText: '  Enter Your Phone Number',
                hintStyle: TextStyle(
                  fontFamily: 'Satoshi',
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
