import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "details",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 209, 41, 41),
        ),
        body: Container(
            child: Column(children: [
          const Padding(padding: EdgeInsets.all(20)),
          Container(
            width: 400,
            height: 60,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    side: BorderSide(color: const Color.fromARGB(31, 0, 0, 0)),
                    shadowColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                onPressed: () {},
                icon: const Icon(Icons.podcasts),
                label: const Text("Scan and mark attendence")),
          ),
          Padding(padding: EdgeInsets.all(20)),
          InkWell(
            onTap: () {
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            child: Card(
              child: Column(
                children: [
                  Container(
                    width: 500,
                    height: 30,
                    color: const Color.fromARGB(255, 83, 82, 82),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "    Jave",
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 31, 192, 114),
                              borderRadius: BorderRadius.circular(40)),
                          // color: Color.fromARGB(255, 192, 82, 31),
                          child: InkWell(
                            onTap: () {
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   SnackBar(content: Text('Attendance Marke ')),
                              // );
                            },
                            child: Icon(
                              Icons.how_to_reg_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        )
                      ],
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
        ])));
  }
}
