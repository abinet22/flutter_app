import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/main.dart'; // Import your main app
import 'package:flutter_app/widgets/custom_elevated_button.dart'; // Import CustomElevatedButton for testing

void main() {
  testWidgets('LoginPage UI elements test', (WidgetTester tester) async {
    // Build the app and trigger a frame
    await tester.pumpWidget(const MyApp());
    await tester.pump(); // Ensure the widget tree is fully built

    // Verify that the LoginPage contains the correct widgets
    expect(find.byType(TextField),
        findsNWidgets(2)); // Should find 2 text fields (email and password)
    expect(
        find.text('Email'), findsOneWidget); // Check for the email label text
    expect(find.text('Password'),
        findsOneWidget); // Check for the password label text

    // Ensure the Login button is found and labeled correctly
    expect(find.byType(CustomElevatedButton),
        findsOneWidget); // Check for the Login button
    expect(find.widgetWithText(CustomElevatedButton, 'Login'),
        findsOneWidget); // Check if the button has the correct label

    // Check the AppBar title separately using its key
    expect(find.byKey(const Key('loginAppBarTitle')),
        findsOneWidget); // Check if the AppBar has the correct title
  });
}
