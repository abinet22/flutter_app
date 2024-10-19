import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key}); // Convert 'key' to a super parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'), // Use const
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Use const
        child: Column(
          children: [
            const CustomTextField(
                label: 'Email'), // Use const for CustomTextField
            const CustomTextField(
                label: 'Password'), // Use const for CustomTextField
            const SizedBox(height: 20), // Use const
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login'), // Use const
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;

  const CustomTextField({super.key, required this.label}); // Const constructor

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration:
          InputDecoration(labelText: label), // Use label from the constructor
    );
  }
}
