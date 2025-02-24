import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_project_name/lib/details.dart';
import 'package:new_project_name/lib/trainer_details.dart';
import 'package:new_project_name/lib/trainer_new_course.dart';
// import 'package:flutter_application_1/details.dart';
// import 'package:flutter_application_1/edit_session.dart';
// import 'package:flutter_application_1/new_course.dart';
// import 'package:flutter_application_1/trainer_details.dart';
// import 'package:flutter_application_1/trainer_new_course.dart';

class TrainerFirstScreen extends StatefulWidget {
  const TrainerFirstScreen({super.key});

  @override
  State<TrainerFirstScreen> createState() => _TrainerFirstScreenState();
}

class _TrainerFirstScreenState extends State<TrainerFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        backgroundColor: Color.fromARGB(255, 209, 41, 41),
        foregroundColor: Colors.white,
        title: Text(
          "courses".tr(),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(children: [
          ElevatedButton.icon(
            label: Text("newcourse".tr()),
            icon: Icon(Icons.note_add_outlined),
            style: ElevatedButton.styleFrom(
                side: BorderSide(color: const Color.fromARGB(31, 0, 0, 0)),
                shadowColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewCourseTrainer()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TrainerDetails()));
            },
            child: Card(
              child: Column(
                children: [
                  Container(
                    width: 500,
                    height: 30,
                    color: const Color.fromARGB(255, 83, 82, 82),
                    child: Text(
                      "Jave",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.card_membership_outlined),
                      Text("John J "),
                      SizedBox(
                        width: 300,
                      ),
                      Icon(Icons.person_2),
                      Text("3"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.wifi_find_rounded),
                      Text("5"),
                      SizedBox(
                        width: 280,
                      ),
                      Icon(Icons.date_range),
                      Text("08:00 Sep 21, 2022"),
                    ],
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            child: Card(
              child: Column(
                children: [
                  Container(
                    width: 500,
                    height: 30,
                    color: const Color.fromARGB(255, 83, 82, 82),
                    child: Text(
                      "C#",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.card_membership_outlined),
                      Text("Tony"),
                      SizedBox(
                        width: 300,
                      ),
                      Icon(Icons.person_2),
                      Text("5"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.wifi_find_rounded),
                      Text("6"),
                      SizedBox(
                        width: 280,
                      ),
                      Icon(Icons.date_range),
                      Text("10:00 Sep 25, 2022"),
                    ],
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            child: Card(
              child: Column(
                children: [
                  Container(
                    width: 500,
                    height: 30,
                    color: const Color.fromARGB(255, 83, 82, 82),
                    child: Text(
                      "Python",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.card_membership_outlined),
                      Text("Alex "),
                      SizedBox(
                        width: 300,
                      ),
                      Icon(Icons.person_2),
                      Text("12"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.wifi_find_rounded),
                      Text("8"),
                      SizedBox(
                        width: 280,
                      ),
                      Icon(Icons.date_range),
                      Text("06:00 Oct 18, 2022"),
                    ],
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            child: Card(
              child: Column(
                children: [
                  Container(
                    width: 500,
                    height: 30,
                    color: const Color.fromARGB(255, 83, 82, 82),
                    child: Text(
                      "C++",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.card_membership_outlined),
                      Text(" Osama "),
                      SizedBox(
                        width: 300,
                      ),
                      Icon(Icons.person_2),
                      Text("8"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.wifi_find_rounded),
                      Text("7"),
                      SizedBox(
                        width: 280,
                      ),
                      Icon(Icons.date_range),
                      Text("08:00 Oct 22, 2022"),
                    ],
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            child: Card(
              child: Column(
                children: [
                  Container(
                    width: 500,
                    height: 30,
                    color: const Color.fromARGB(255, 83, 82, 82),
                    child: Text(
                      "JS",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.card_membership_outlined),
                      Text("Ashour"),
                      SizedBox(
                        width: 300,
                      ),
                      Icon(Icons.person_2),
                      Text("5"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.wifi_find_rounded),
                      Text("3"),
                      SizedBox(
                        width: 280,
                      ),
                      Icon(Icons.date_range),
                      Text("08:00 Sep 21, 2022"),
                    ],
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Card(
              child: Column(
                children: [
                  Container(
                    width: 500,
                    height: 30,
                    color: const Color.fromARGB(255, 83, 82, 82),
                    child: Text(
                      "Jave",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.card_membership_outlined),
                      Text("John J "),
                      SizedBox(
                        width: 300,
                      ),
                      Icon(Icons.person_2),
                      Text("3"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.wifi_find_rounded),
                      Text("5"),
                      SizedBox(
                        width: 280,
                      ),
                      Icon(Icons.date_range),
                      Text("08:00 Sep 21, 2022"),
                    ],
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Card(
              child: Column(
                children: [
                  Container(
                    width: 500,
                    height: 30,
                    color: const Color.fromARGB(255, 83, 82, 82),
                    child: Text(
                      "Jave",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.card_membership_outlined),
                      Text("John J "),
                      SizedBox(
                        width: 300,
                      ),
                      Icon(Icons.person_2),
                      Text("3"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.wifi_find_rounded),
                      Text("5"),
                      SizedBox(
                        width: 280,
                      ),
                      Icon(Icons.date_range),
                      Text("08:00 Sep 21, 2022"),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
