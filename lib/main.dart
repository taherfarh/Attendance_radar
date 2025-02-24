import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/heelpers/shared_helpers.dart';
// ignore: unused_import
import 'package:flutter_application_1/loginpage.dart';
// ignore: unused_import
import 'package:flutter_application_1/signup.dart';
import 'package:flutter_application_1/splachscreen.dart';
// import 'package:flutter_blue_plus/flutter_blue_plus.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // FlutterBluePlus.setLogLevel(LogLevel.verbose, color: true);
  sharedhelpers.init();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        child: myapp()),
  );
}


class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return homescreen();
  }
}

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        home: SplachScreen());
  }
}
