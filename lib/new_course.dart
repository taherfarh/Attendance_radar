import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewCourse extends StatefulWidget {
  const NewCourse({super.key});

  @override
  State<NewCourse> createState() => _NewCourseState();
}

class _NewCourseState extends State<NewCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 209, 41, 41),
          centerTitle: true,
          title: Text(
            "scan for markers",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: 150, left: 80, right: 50, bottom: 15),
              child: Text(
                  "seraching for attendance markers nearby for the session "),
            ),
            Container(
              width: 310,
              height: 50,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      backgroundColor: const Color.fromARGB(255, 77, 76, 76)),
                  onPressed: () {},
                  icon: Icon(
                    Icons.portable_wifi_off_outlined,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Stop Scan",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Padding(padding: EdgeInsets.all(30)),
            Container(
              width: 310,
              height: 50,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: const Color.fromARGB(31, 0, 0, 0)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.man_2_outlined),
                  label: Text("Mark attendance manually")),
            )
          ],
        ));
  }
}
