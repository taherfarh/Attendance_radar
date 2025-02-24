import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewCourseTrainer extends StatefulWidget {
  const NewCourseTrainer({super.key});

  @override
  State<NewCourseTrainer> createState() => _NewCourseTrainerState();
}

class _NewCourseTrainerState extends State<NewCourseTrainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        backgroundColor: Color.fromARGB(255, 209, 41, 41),
        foregroundColor: Colors.white,
        title: Text(
          "New course".tr(),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(13),
        child: Column(
          children: [
            Text(
              "Course title *",
              style: TextStyle(color: Colors.grey),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Card(
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  label: Text("Course title *"),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Padding(padding: EdgeInsets.only(left: 3)),
                Text("Disable push notification"),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
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
          ],
        ),
      ),
    );
  }
}
