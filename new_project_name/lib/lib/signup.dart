// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:new_project_name/lib/verificationpage.dart';

// import 'package:flutter_application_1/heelpers/shared_helpers.dart';
// import 'package:flutter_application_1/main.dart';

// import 'package:flutter_application_1/verificationpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var controller = TextEditingController();

  var namecontorller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                "Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              "please entre your information below to sign up",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Image.network(
                "https://th.bing.com/th/id/R.18f3df66be7f5ee4463bc83fb43668cd?rik=mgWK2AbMuRuc0g&pid=ImgRaw&r=0",
                height: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: const Text(
                "Name",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Card(
              child: TextFormField(
                // controller: namecontorller,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Please Entre Your Name ",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: const Text(
                "Email",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Card(
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Please Entre Your Password",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "Password",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Card(
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Please Entre Your Password",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "Student ID",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Card(
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Please Entre Student ID",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color.fromARGB(255, 131, 33, 243),
              ),
              child: ElevatedButton(
                onPressed: () async {
                  controller = controller;
                  var sharedhelpers;
                  await sharedhelpers.prefs!
                          .setString("name", namecontorller.text);

                  // SharedPreferences.getInstance();

                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => VerificationPage()));
                },
                child: Text("Sign Up"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account ?",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                TextButton(
                    onPressed: ()  {
                      

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => VerificationPage()));
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(color: Color.fromARGB(255, 13, 3, 203)),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
