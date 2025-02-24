import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EditSession extends StatefulWidget {
  const EditSession({super.key});

  @override
  State<EditSession> createState() => _EditSessionState();
}

class _EditSessionState extends State<EditSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 209, 41, 41),
        title: Text(
          "Edit session".tr(),
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Session title *",
              style: TextStyle(color: Colors.grey),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Container(
              width: 400,
              padding: EdgeInsets.only(top: 15, bottom: 15, right: 5, left: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text("Physics Day 3"),
            ),
            Padding(padding: EdgeInsets.only(top: 13)),
            Text("Session date *", style: TextStyle(color: Colors.grey)),
            Padding(padding: EdgeInsets.only(top: 5)),
            Container(
              width: 400,
              padding: EdgeInsets.only(top: 15, bottom: 15, right: 5, left: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text("16/8/2024       8:00 AM "),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text("the training well be created in Africa/Cairo time zone"),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text(
              "Duration (in minutes) *",
              style: TextStyle(color: Colors.grey),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Container(
              width: 400,
              padding: EdgeInsets.only(top: 15, bottom: 15, right: 5, left: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text("60"),
            ),
            Padding(padding: EdgeInsets.only(top: 12)),
            Container(
              width: 310,
              height: 50,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      backgroundColor: const Color.fromARGB(255, 77, 76, 76)),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(' Saved ')),
                    );
                  },
                  icon: Icon(
                    Icons.save_alt_outlined,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Save session",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              width: 310,
              height: 50,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                      side: BorderSide(color: Colors.red),
                      shadowColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                  onPressed: () {
                    // Navigator.of(context).pushReplacement(
                    //     MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  label: const Text(
                    "Delete Session",
                    style: TextStyle(color: Colors.red),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
