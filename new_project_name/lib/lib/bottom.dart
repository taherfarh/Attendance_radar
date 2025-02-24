import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_project_name/lib/help_screen.dart';
import 'package:new_project_name/lib/homescreen.dart';
import 'package:new_project_name/lib/settings_screen.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int my_index = 0;
  List<Widget> screens = const [
    HomeScreen(),
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
