import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart'; // Import your main app file

void main() {
  enableFlutterDriverExtension(); // Enables the Flutter Driver extension

  runApp(
      const MyApp()); // Start your main app (you may use the same entry point as in main.dart)
}
