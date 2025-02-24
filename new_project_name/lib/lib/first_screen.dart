import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter_application_1/bottom.dart';
// import 'package:flutter_application_1/loginpage.dart';
// import 'package:flutter_application_1/trainer_bottom.dart';
// import 'package:flutter_application_1/trainer_f_screen.dart';
import 'package:new_project_name/lib/bottom.dart';
import 'package:new_project_name/lib/trainer_bottom.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Image.network(
              "https://th.bing.com/th/id/R.18f3df66be7f5ee4463bc83fb43668cd?rik=mgWK2AbMuRuc0g&pid=ImgRaw&r=0",
              width: 200,
            ),
            Text(
              "Attendance Radar",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Padding(padding: EdgeInsets.all(15)),
            Text(
              "institute",
              style: TextStyle(fontSize: 12),
            ),
            Padding(padding: EdgeInsets.all(15)),
            Text(
              "Public Server",
              style: TextStyle(fontSize: 16),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              width: 300,
              child: ElevatedButton.icon(
                label: Text("i am a STUDENT".tr()),
                icon: Icon(Icons.group_outlined),
                style: ElevatedButton.styleFrom(
                    side: BorderSide(color: const Color.fromARGB(31, 0, 0, 0)),
                    shadowColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Bottom()));
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              width: 300,
              child: ElevatedButton.icon(
                label: Text(
                  "i am a TRAINER".tr(),
                  style: TextStyle(color: Colors.white),
                ),
                icon: Icon(Icons.contact_emergency_outlined),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 83, 81, 81),
                    side: BorderSide(color: const Color.fromARGB(31, 0, 0, 0)),
                    shadowColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => TrainerBottom()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
