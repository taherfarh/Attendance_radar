import 'package:flutter/material.dart';
import 'package:flutter_application_1/ble.dart';
import 'package:flutter_application_1/devices_ble.dart';
import 'package:flutter_application_1/edit_session.dart';
import 'package:flutter_application_1/emit_amarker.dart';
import 'package:flutter_application_1/new_course.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:get/get.dart';

class TrainerDetails extends StatefulWidget {
  const TrainerDetails({super.key});

  @override
  State<TrainerDetails> createState() => _TrainerDetailsState();
}

class _TrainerDetailsState extends State<TrainerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 209, 41, 41),
          title: const Text(
            "Details",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    child: ElevatedButton.icon(
                        label: const Text("New Session"),
                        icon: Icon(Icons.cast_rounded),
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                              color: Color.fromARGB(31, 0, 0, 0)),
                          shadowColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DeviceBle()));
                        }),
                  ),
                  Container(
                    width: 200,
                    child: ElevatedButton.icon(
                      label: const Text("Student"),
                      icon: Icon(Icons.group_outlined),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                            color: const Color.fromARGB(31, 0, 0, 0)),
                        shadowColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => NewCourse()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 15)),
              Card(
                child: Column(
                  children: [
                    Container(
                      width: 500,
                      height: 30,
                      color: const Color.fromARGB(255, 83, 82, 82),
                      child: Row(
                        children: [
                          const Text(
                            "    Java 1",
                            style: TextStyle(color: Colors.white),
                          ),
                          Padding(padding: EdgeInsets.only(left: 300)),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 192, 82, 31),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => EmitScreen()),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Attendance Marked')),
                                );
                              },
                              child: const Icon(
                                Icons.podcasts_outlined,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 15)),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 192, 82, 31),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => EditSession()),
                                );
                              },
                              child: const Icon(
                                Icons.edit,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 15)),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 192, 82, 31),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Search()),
                                );
                              },
                              child: const Icon(
                                Icons.person_search_outlined,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(Icons.card_membership_outlined),
                        Text("John J "),
                        SizedBox(width: 300),
                        Icon(Icons.person_2),
                        Text("3"),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(Icons.wifi_find_rounded),
                        Text("5"),
                        SizedBox(width: 280),
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Icon(Icons.date_range),
                        Text("08:00 Sep 21, 2022"),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 15)),
              Card(
                child: Column(
                  children: [
                    Container(
                      width: 500,
                      height: 30,
                      color: const Color.fromARGB(255, 83, 82, 82),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "    Java 2",
                            style: TextStyle(color: Colors.white),
                          ),
                          Padding(padding: EdgeInsets.only(left: 300)),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 192, 82, 31),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Attendance Marked')),
                                );
                              },
                              child: const Icon(
                                Icons.podcasts_outlined,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 15)),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 192, 82, 31),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Attendance Marked')),
                                );
                              },
                              child: const Icon(
                                Icons.edit,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 15)),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 192, 82, 31),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Attendance Marked')),
                                );
                              },
                              child: const Icon(
                                Icons.person_search_outlined,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(Icons.card_membership_outlined),
                        Text("John J "),
                        SizedBox(width: 300),
                        Icon(Icons.person_2),
                        Text("3"),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(Icons.wifi_find_rounded),
                        Text("5"),
                        SizedBox(width: 280),
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Icon(Icons.date_range),
                        Text("08:00 Sep 21, 2022"),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 15)),
              Card(
                child: Column(
                  children: [
                    Container(
                      width: 500,
                      height: 30,
                      color: const Color.fromARGB(255, 83, 82, 82),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "    Java 3",
                            style: TextStyle(color: Colors.white),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 300)),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 192, 82, 31),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Attendance Marked')),
                                );
                              },
                              child: const Icon(
                                Icons.podcasts_outlined,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 15)),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 192, 82, 31),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Attendance Marked')),
                                );
                              },
                              child: const Icon(
                                Icons.edit,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 15)),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 192, 82, 31),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Attendance Marked')),
                                );
                              },
                              child: const Icon(
                                Icons.person_search_outlined,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(Icons.card_membership_outlined),
                        Text("John J "),
                        SizedBox(width: 300),
                        Icon(Icons.person_2),
                        Text("3"),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(Icons.wifi_find_rounded),
                        Text("5"),
                        SizedBox(width: 280),
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Icon(Icons.date_range),
                        Text("08:00 Sep 21, 2022"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
