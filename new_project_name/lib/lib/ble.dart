// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_blue/flutter_blue.dart';

import 'package:flutter_blue/gen/flutterblue.pb.dart';
import 'package:flutter_blue/gen/flutterblue.pbserver.dart';
import 'package:flutter_blue/gen/flutterblue.pbserver.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:permission_handler/permission_handler.dart';

class BleController {
  FlutterBlue ble = FlutterBlue.instance;
  final scanResultsStream = FlutterBlue.instance.scanResults;

  Future scanDevices() async {
    if (await Permission.bluetoothScan.request().isGranted) {
      if (await Permission.bluetoothConnect.request().isGranted) {
        ble.startScan(timeout: Duration(seconds: 10));
        ble.stopScan();
      }
    }
    
  }

  Stream<List<dynamic>> get ScanResult => ble.scanResults;

  
}
