import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 209, 41, 41),
        title: Text(
          "Attendance".tr(),
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: 
      Container(
        margin: EdgeInsets.all(14),
        child: Column(
          
          children: [

            Padding(padding: EdgeInsets.only(top: 8)),

            TextField(
              decoration: InputDecoration(
                label: Text("search a student in this list "),
                suffixIcon: Icon(Icons.search_outlined)
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