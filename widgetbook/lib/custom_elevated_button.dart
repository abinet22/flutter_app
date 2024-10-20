import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the widget from your app
import 'package:flutter_app/widgets/custom_elevated_button.dart';

@widgetbook.UseCase(name: 'Default', type: CustomElevatedButton)
Widget buildCustomElevatedButtonUseCase(BuildContext context) {
  return CustomElevatedButton(
    label: 'Login', // Provide a value for the required 'label' parameter
    onPressed: () {
      // Use debugPrint instead of print in production code
      debugPrint('Button Pressed');
    },
    color: Colors.green, // You can specify other parameters if needed
    textColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    elevation: 5.0,
  );
}
