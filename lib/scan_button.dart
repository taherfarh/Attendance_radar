// import 'package:flutter/material.dart';
// import 'package:flutter_blue_plus/flutter_blue_plus.dart';

// class ScanButton extends StatefulWidget {
//   const ScanButton({Key? key}) : super(key: key);

//   @override
//   State<ScanButton> createState() => _ScanButtonState();
// }

// class _ScanButtonState extends State<ScanButton> {
//   // ignore: deprecated_member_use
//   final FlutterBluePlus _flutterBluePlus = FlutterBluePlus.instance;

//   bool _isScanning = false;

//   @override
//   void initState() {
//     super.initState();
//     // Listen for bluetooth state changes
//     FlutterBluePlus.state.listen((state) {
//       // Update UI based on bluetooth state (optional)
//     });
//   }

//   @override
//   void dispose() {
//     FlutterBluePlus.stopScan();
//     super.dispose();
//   }

//   void _toggleScan() async {
//     setState(() {
//       _isScanning = !_isScanning;
//     });

//     if (_isScanning)  {
//       // Start scanning for BLE devices
//        FlutterBluePlus.scan(timeout: Duration(seconds: 10));
//       // Listen for discovered devices during scan
//       FlutterBluePlus.scanResults.listen((scanResult) {
//         // Process discovered beacons here (extract data, verify attendance)
//         // You'll need to implement your verification logic based on your data structure in Cloud Firestore
        
//         print('Device found: ${scanResult.device.name} - ${scanResult.rssi}');
//       });
//     } else {
//       // Stop scanning for BLE devices
//       await FlutterBluePlus.stopScan();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: _toggleScan,
//       child: Text(_isScanning ? 'Stop Scan' : 'Scan for Beacons'),
//     );
//   }
// }