import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/change_password.dart';
import 'package:flutter_application_1/heelpers/shared_helpers.dart';
import 'package:flutter_application_1/loginpage.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var namecontorller = TextEditingController();
  void getprefs() async {
    await sharedhelpers.prefs!.getString("email");
    await sharedhelpers.prefs!.getString("password");
  }

  String dropdownvalue = 'English';
  var items = [
    'English',
    'Arabic',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 209, 41, 41),
        title: Text(
          "setting".tr(),
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(12)),
              child: DropdownButton<Locale>(
                dropdownColor: Colors.white,
                underline: SizedBox(),
                value: Localizations.localeOf(context),
                items: [
                  DropdownMenuItem(
                    value: Locale('en'),
                    child: Text('English'),
                  ),
                  DropdownMenuItem(
                    value: Locale('ar'),
                    child: Text('Arabic'),
                  ),
                ],
                onChanged: (Locale? locale) {
                  if (context.locale.toString() == "en") {
                    context.setLocale(Locale("ar"));
                  } else {
                    context.setLocale(Locale("en"));
                  }
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              "institute",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15, right: 5, left: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text("Public Server"),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              "Email",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15, right: 5, left: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text("${sharedhelpers.prefs!.getString("email")}"),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              "Password",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15, right: 5, left: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text("${sharedhelpers.prefs!.getString("password")}"),
            ),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                    side: BorderSide(color: Colors.black),
                    shadowColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Saved')),
                  );
                },
                icon: const Icon(
                  Icons.save_alt_outlined,
                  color: Colors.white,
                ),
                label: const Text(
                  "Save my information",
                  style: TextStyle(color: Colors.white),
                )),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                    side: BorderSide(color: Colors.black),
                    shadowColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChangePassword()));
                },
                icon: const Icon(
                  Icons.lock_outlined,
                  // color: Colors.white,
                ),
                label: const Text(
                  "Change my password",
                  // style: TextStyle(color: Colors.white),
                )),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                    side: BorderSide(color: Colors.black),
                    shadowColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                icon: const Icon(
                  Icons.logout_outlined,
                  // color: Colors.red,
                ),
                label: const Text(
                  "Log out",
                  // style: TextStyle(color: Colors.red),
                )),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                    side: BorderSide(color: Colors.red),
                    shadowColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                label: const Text(
                  "Delete my account",
                  style: TextStyle(color: Colors.red),
                )),
          ],
        ),
      ),
    );
  }
}
