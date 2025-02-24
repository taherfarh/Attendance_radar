import 'package:flutter/material.dart';
// import 'package:flutter_application_1/help_screen.dart';
// import 'package:flutter_application_1/homescreen.dart';
// import 'package:flutter_application_1/settings_screen.dart';
// import 'package:flutter_application_1/trainer_f_screen.dart';
import 'package:new_project_name/lib/help_screen.dart';
import 'package:new_project_name/lib/settings_screen.dart';
import 'package:new_project_name/lib/trainer_f_screen.dart';

class TrainerBottom extends StatefulWidget {
  const TrainerBottom({super.key});

  @override
  State<TrainerBottom> createState() => _TrainerBottomState();
}

class _TrainerBottomState extends State<TrainerBottom> {
  int my_index = 0;
  List<Widget> screens = const [
    TrainerFirstScreen(),
    SettingsScreen(),
    HelpScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: my_index,
          onTap: (index) {
            setState(() {
              my_index = index;
            });
          },
          selectedItemColor: const Color.fromARGB(255, 203, 123, 2),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
              label: "courses",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
                label: "Setting"),
            BottomNavigationBarItem(
              icon: Icon(Icons.help_outline, color: Colors.grey),
              label: "Help",
            ),
          ]),
      body: Container(
        child: screens[my_index],
      ),
    );
  }
}
