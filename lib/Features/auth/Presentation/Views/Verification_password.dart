import 'dart:async';

import 'package:diabestapp/controller/auth/verification_password_controller.dart';
import 'package:flutter/material.dart';

import '../../../../Core/classes/status_request.dart';

class MyVerificationPage extends StatefulWidget {
  const MyVerificationPage({
    super.key,
  });

  @override
  _MyVerificationPageState createState() => _MyVerificationPageState();
}

class _MyVerificationPageState extends State<MyVerificationPage> {
  String emailAddress = 'es*******@gmail.com';
  String otpCode = '';
  int countdown = 30;
  late VerificationPasswordController verificationPasswordController;

  @override
  void initState() {
    super.initState();
    startCountdown();
    verificationPasswordController = VerificationPasswordController();
  }

  void startCountdown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (countdown > 0) {
          countdown--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'OTP Code Verification',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text('Enter code sent to $emailAddress'),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 6; i++)
                  Container(
                    width: 40.0,
                    height: 40.0,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 16.0),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      readOnly: true,
                      controller: TextEditingController(
                          text: i < otpCode.length ? otpCode[i] : ''),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 16.0),
            Text('Reset code in $countdown s'),
            const SizedBox(height: 16.0),
            StreamBuilder(
              stream:
                  verificationPasswordController.emailStreamControllerOutData,
              builder: (context, snapshot) =>  snapshot.data == null
                  ? const SizedBox()
                  : snapshot.data == StatusRequest.loading
                  ? const Center(
                  child: CircularProgressIndicator())
                  : snapshot.data == StatusRequest.none
                  ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF246BFE),
                    padding: const EdgeInsets.symmetric(horizontal: 40)),
                onPressed: () {
                  print("object");
                  verificationPasswordController.onPressedForgetPasswordButton(
                      resetCode: otpCode, context: context);
                  // widget.onPressedContinue!(otpCode);
                  // _onContinuePressed();
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ): snapshot.data ==
                  StatusRequest.dataNotCompleted
                  ? Column(
                children: [
                  if (snapshot.data ==
                      StatusRequest
                          .dataNotCompleted)
                    const Center(
                      child: Text(
                        "enter all filed",
                        style: TextStyle(
                            color: Colors.red),
                      ),
                    ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF246BFE),
                        padding: const EdgeInsets.symmetric(horizontal: 40)),
                    onPressed: () {
                      print("object");
                      verificationPasswordController.onPressedForgetPasswordButton(
                          resetCode: otpCode, context: context);
                      // widget.onPressedContinue!(otpCode);
                      // _onContinuePressed();
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                ],
              )
                  : Center(
                  child: Text(
                      snapshot.data.toString())),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: buildNumericKeyboard(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNumericKeyboard() {
    return ListView(
      shrinkWrap: true,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildKeyboardButton('1'),
            buildKeyboardButton('2'),
            buildKeyboardButton('3'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildKeyboardButton('4'),
            buildKeyboardButton('5'),
            buildKeyboardButton('6'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildKeyboardButton('7'),
            buildKeyboardButton('8'),
            buildKeyboardButton('9'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildEmptyButton(),
            buildKeyboardButton('0'),
            buildBackspaceButton(),
          ],
        ),
      ],
    );
  }

  Widget buildKeyboardButton(String value) {
    return GestureDetector(
      onTap: () {
        if (value.isNotEmpty) {
          _onKeyboardButtonPressed(value);
        }
      },
      child: Container(
        width: 60.0,
        height: 60.0,
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            value,
            style: const TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }

  Widget buildBackspaceButton() {
    return GestureDetector(
      onTap: () {
        _onBackspacePressed();
      },
      child: Container(
        width: 60.0,
        height: 60.0,
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.yellow[700],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Center(
          child: Icon(
            Icons.backspace,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget buildEmptyButton() {
    return Container(
      width: 60.0,
      height: 60.0,
      margin: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
    );
  }

  void _onOtpChanged(int index, String value) {
    setState(() {
      otpCode =
          otpCode.padLeft(index, '0') + value + otpCode.substring(index + 1);
    });
  }

  void _onContinuePressed() {
    // Add your logic to verify the OTP code
    print('Verifying OTP Code: $otpCode');
    // You can add logic here to check if the OTP is correct
    // For simplicity, let's just print the OTP code for now
  }

  void _onKeyboardButtonPressed(String value) {
    if (otpCode.length < 6) {
      setState(() {
        otpCode += value;
      });
    }
  }

  void _onBackspacePressed() {
    if (otpCode.isNotEmpty) {
      setState(() {
        otpCode = otpCode.substring(0, otpCode.length - 1);
      });
    }
  }
}
