// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/help_screen.dart';
// import 'package:flutter_application_1/homescreen.dart';
// import 'package:flutter_application_1/settings_screen.dart';

// class Bottom_navigation_Bar extends StatefulWidget {
//   const Bottom_navigation_Bar({super.key});

//   @override
//   State<Bottom_navigation_Bar> createState() => _Bottom_navigation_BarState();
// }

// class _Bottom_navigation_BarState extends State<Bottom_navigation_Bar> {

//   int my_index = 0;
//   List<Widget> screens = const [
//     HomeScreen(),
//     SettingsScreen(),
//     HelpScreen(),
//   ];






//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           screens[my_index],
//            BottomNavigationBar(
//                 onTap: (index) {
//                   setState(() {
//                     my_index = index;
//                   });
//                 },
//                 currentIndex: my_index,
//                 selectedItemColor: const Color.fromARGB(255, 203, 123, 2),
//                 items: const [
//                   BottomNavigationBarItem(
//                     icon: Icon(
//                       Icons.home_outlined,
//                       color: Colors.grey,
//                     ),
//                     label: "Courses",
//                   ),
//                   BottomNavigationBarItem(
//                       icon: Icon(
//                         Icons.settings,
//                         color: Colors.grey,
//                       ),
//                       label: "Settings"),
//                   BottomNavigationBarItem(
//                     icon: Icon(Icons.help, color: Colors.grey),
//                     label: "Help",
//                   ),
//                 ],
//               ),
//         ],
//       )
//     );
//   }
// }
