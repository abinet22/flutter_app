import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/custom_elevated_button.dart'; // Import the custom button
import 'package:flutter_app/widgets/custom_text_field.dart'; // Import the custom textfeild

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login', key: Key('loginAppBarTitle')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CustomTextField(
              label: 'Email',
            ),
            const SizedBox(height: 16),
            const CustomTextField(
              label: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 20),
            CustomElevatedButton(
              key: const Key('loginButton'),
              label: 'Login',
              onPressed: () {
                // Login logic here
              },
              color: Colors.green,
              textColor: Colors.white,
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
