import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmitScreen extends StatefulWidget {
  const EmitScreen({super.key});

  @override
  State<EmitScreen> createState() => _EmitScreenState();
}

class _EmitScreenState extends State<EmitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 209, 41, 41),
        title: Text(
          "Emit a marker".tr(),
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Physics 3",
              style: TextStyle(fontSize: 18),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Text("you are now emiting an attendance marker"),
            Padding(padding: EdgeInsets.only(top: 12)),
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
                    "Stop emitting",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Padding(padding: EdgeInsets.only(top: 60)),
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
                  label: Text("Generate manual code")),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Container(
              color: Color.fromARGB(255, 241, 239, 231),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle_outlined),
                        Text("1997")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Marked Attendance : 0")],
                    )
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Row(
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    // backgroundColor: const Color.fromARGB(255, 77, 76, 76)
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("New student"),
                ),
                Padding(padding: EdgeInsets.only(left: 200)),

                InkWell(
                    onTap: () {}, child: Icon(Icons.person_add_alt_1_outlined)),
                Padding(padding: EdgeInsets.only(left: 8)),

                InkWell(
                    onTap: () {}, child: Icon(Icons.personal_injury_outlined)),
                Padding(padding: EdgeInsets.only(left: 8)),

                InkWell(
                    onTap: () {}, child: Icon(Icons.person_search_outlined)),
                // Padding(padding: EdgeInsets.only(left: 8)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
