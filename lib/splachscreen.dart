import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom.dart';
import 'package:flutter_application_1/first_screen.dart';
import 'package:flutter_application_1/homescreen.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/trainer_bottom.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SplachScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => TrainerBottom()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 100),
        child: ListView(
          children: [
            // Image.network(
            //   // "https://img.freepik.com/premium-vector/courses-logo-icon-brand-identity-sign-symbol-template_880781-2160.jpg?w=740",
            //   // height: 100,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
