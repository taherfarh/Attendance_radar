import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 209, 41, 41),
        title: Text(
          "help".tr(),
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("trainer(S)information".tr()),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.cast_rounded),
                  title: Text("numberofsession".tr()),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.date_range_outlined),
                  title: Text("next/previoussessiondatetime".tr()),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.watch_later_outlined),
                  title: Text("sessiondurationperminutes".tr()),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.qr_code_2_outlined),
                  title: Text("scanforattendancemarker".tr()),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.podcasts_outlined),
                  title: Text("emitattendancemarker".tr()),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.wifi_off_outlined),
                  title: Text("unsubscribefromsession".tr()),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.group),
                  title: Text("numberofstudents".tr()),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.manage_accounts_outlined),
                  title: Text("manuallymanageattendance".tr()),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.list),
                  title: Text("numberofmarkedattendancesforasession".tr()),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.how_to_reg_outlined),
                  title: Text("markedasapresent".tr()),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.person_off_outlined),
                  title: Text("markedaslate".tr()),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.personal_injury_outlined),
                  title: Text("markedasexecused".tr()),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Text("alotofwords".tr()),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.numbers_outlined),
                  title: Text("numberofcreditsleft".tr()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
