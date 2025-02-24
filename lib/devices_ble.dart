import 'package:flutter/material.dart';
import 'package:flutter_application_1/ble.dart';
import 'package:get/get.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io' show Platform;

class DeviceBle extends StatefulWidget {
  const DeviceBle({super.key});

  @override
  State<DeviceBle> createState() => _DeviceBleState();
}

class _DeviceBleState extends State<DeviceBle> {
  @override
  void initState() {
    super.initState();
    requestPermissions(); // Request permissions at the start
  }

  void requestPermissions() async {
    if (Platform.isAndroid) {
      await [
        Permission.bluetoothScan,
        Permission.bluetoothConnect,
        Permission.location,
      ].request();
    }
  }

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
      body: GetBuilder<BleController>(
        init: BleController(),
        builder: (BleController controller) {
          return Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                StreamBuilder<List<ScanResult>>(
                  stream: controller.scanResultsStream,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.active) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            final data = snapshot.data![index];

                            return Card(
                              elevation: 2,
                              child: ListTile(
                                title: Text(data.device.name.isNotEmpty
                                    ? data.device.name
                                    : "Unknown Device"),
                                subtitle: Text(data.device.id.id),
                                trailing: Text(data.rssi.toString()),
                              ),
                            );
                          },
                        );
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.scanDevices();
                  },
                  child: Text("Scan"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class BleController extends GetxController {
  FlutterBlue flutterBlue = FlutterBlue.instance;
  var scanResults = <ScanResult>[].obs;
  Stream<List<ScanResult>> get scanResultsStream => scanResults.stream;

  @override
  void onInit() {
    super.onInit();
    scanDevices();
  }

  void scanDevices() {
    print('Scanning for devices...');
    scanResults.clear();
    flutterBlue.stopScan();

    flutterBlue.startScan(timeout: Duration(seconds: 4)).then((_) {
      flutterBlue.scanResults.listen((results) {
        for (ScanResult result in results) {
          print(
              'Device found: ${result.device.name} (${result.device.id.id}) with RSSI: ${result.rssi}');
        }
        scanResults.addAll(results);
      });
    });
  }
}
