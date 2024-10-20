import 'package:flutter/material.dart';
import 'package:flutter_app/screens/login_page.dart'; // Correct the import path

void main() {
  runApp(const MyApp()); // Use const when calling the constructor
}

class MyApp extends StatelessWidget {
  // Mark the constructor as 'const'
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const LoginPage(),
    );
  }
}
