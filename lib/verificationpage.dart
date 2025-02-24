import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/bottom.dart';
import 'package:flutter_application_1/homescreen.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
// ignore: unused_import
import 'package:shared_preferences/shared_preferences.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(25),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                "Verification",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              "Please entre the OTP code sent to you by SMS",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            VerificationCode(
                autofocus: true,
                keyboardType: TextInputType.number,
                fullBorder: true,
                margin: EdgeInsets.only(top: 90, left: 20, right: 20),
                onCompleted: (String value) {},
                onEditing: (bool value) {}),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't get a code ?",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Send again",
                      style: TextStyle(color: Color.fromARGB(255, 9, 38, 225)),
                    ))
              ],
            ),
            Container(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color.fromARGB(255, 131, 33, 243),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Bottom()));
                },
                child: Text("Verify"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
