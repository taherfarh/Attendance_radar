import 'package:flutter/material.dart';
import 'package:new_project_name/lib/first_screen.dart';
import 'package:new_project_name/lib/signup.dart';
// import 'package:flutter_application_1/bottom.dart';
// import 'package:flutter_application_1/first_screen.dart';
// import 'package:flutter_application_1/heelpers/shared_helpers.dart';
// import 'package:flutter_application_1/main.dart';
// import 'package:flutter_application_1/homescreen.dart';
// import 'package:flutter_application_1/signup.dart';
// ignore: unused_import
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _homepageState();
}

class _homepageState extends State<LoginScreen> {
  bool isValidEmail(String email) {
    // Define a regular expression for email validation
    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(pattern);

    // Return true if the email matches the pattern, false otherwise
    return regex.hasMatch(email);
  }

  String? _email;
  String? _password;

  final _formkey = GlobalKey<FormState>();
  var check1 = false;
  var emailcontorller = TextEditingController();
  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  "Welcome back!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                "Login your exsiting account",
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
                  width: 100,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: const Text(
                  "Email address",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
              Card(
                child: TextFormField(
                  controller: emailcontorller,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "eg.name@example.com",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email';
                    } else if (!isValidEmail(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _email = newValue;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: const Text(
                  "Password",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
              Card(
                child: TextFormField(
                  controller: passwordcontroller,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "************",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  ),
                  validator: (value) => value!.length < 7
                      ? " Password should be at least 7 characters "
                      : null,
                  onSaved: (newValue) {
                    _password = newValue;
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Checkbox(
                      value: check1,
                      onChanged: (bool? value) {
                        setState(() {
                          check1 = value!;
                        });
                      }),
                  const Text(
                    "Remmeber me",
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Container(
                    width: 59,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forget Password",
                        style: TextStyle(
                            color: Color.fromARGB(255, 18, 3, 239),
                            fontSize: 15),
                      ))
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color.fromARGB(255, 131, 33, 243),
                ),
                child: MaterialButton(
                  onPressed: () async {
                    if (_formkey.currentState!.validate()) {
                      _formkey.currentState?.save();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')),
                      );
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => FirstScreen()));
                    }

                    var sharedhelpers;
                    await sharedhelpers.prefs
                        ?.setString("email", emailcontorller.text);
                    await sharedhelpers.prefs
                        ?.setString("password", passwordcontroller.text);
                  },
                  child: Text("Login"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Container(
                  //   margin: const EdgeInsets.only(top: 10),
                  //   height: 55,
                  //   decoration:
                  //       BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  //   child: Image.asset(
                  //     "assets/images/WhatsApp Image 2024-05-01 at 19.27.12_68ceae8a.jpg",
                  //   ),
                  // ),
                  // Container(
                  //   margin: EdgeInsets.all(10),
                  //   height: 40,
                  //   decoration:
                  //       BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  //   child: Image.asset(
                  //     "assets/images/WhatsApp Image 2024-05-01 at 19.27.12_370b6796.jpg",
                  //   ),
                  // )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account ?",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextButton(
                      onPressed: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                      },
                      child: const Text(
                        "Sign Up",
                        style:
                            TextStyle(color: Color.fromARGB(255, 13, 3, 203)),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
