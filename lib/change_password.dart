import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom.dart';
import 'package:flutter_application_1/heelpers/shared_helpers.dart';
import 'package:flutter_application_1/main.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formkey = GlobalKey<FormState>();

  String? _password;
  var secoundpasswordcontroller = TextEditingController();
  var firstnewpasswordcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 209, 41, 41),
        title: Text(
          "Change Password".tr(),
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Card(
                child: TextFormField(
                  controller: passwordcontroller,
                  obscureText: false,
                  decoration: const InputDecoration(
                    labelText: "Old Password",
                    border: InputBorder.none,
                    hintText: "************",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your old password';
                    }
                    if (value != passwordcontroller.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Card(
                child: TextFormField(
                  controller: firstnewpasswordcontroller,
                  obscureText: false,
                  decoration: const InputDecoration(
                    labelText: "New Password",
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
                  // onSaved: (newValue) {
                  //   _password = newValue;
                  // },
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Card(
                child: TextFormField(
                  controller: secoundpasswordcontroller,
                  obscureText: false,
                  decoration: const InputDecoration(
                    labelText: "New Password Again",
                    border: InputBorder.none,
                    hintText: "************",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != firstnewpasswordcontroller.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
              ),
              MaterialButton(
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    _formkey.currentState?.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Processing Data')),
                    );
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Bottom()));
                  }

                  await sharedhelpers.prefs
                      ?.setString("password", secoundpasswordcontroller.text);
                },
                child: Text("Change Password"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
