import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_app/main.dart'; // Import your app's main file
import 'package:flutter_app/screens/login_page.dart'; // Import LoginPage
import 'package:flutter_app/widgets/custom_text_field.dart'; // Import the custom textfeild

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('LoginPage integration test', (WidgetTester tester) async {
    // Step 1: Pump the LoginPage widget
    await tester.pumpWidget(const MaterialApp(
      home: LoginPage(),
    ));
    await tester.pumpAndSettle(); // Wait for animations to finish

    // Step 2: Check if the Email and Password TextFields are present
    expect(find.byType(CustomTextField),
        findsNWidgets(2)); // Check for 2 CustomTextField widgets
    expect(find.text('Email'),
        findsOneWidget); // Check if the 'Email' label is present
    expect(find.text('Password'),
        findsOneWidget); // Check if the 'Password' label is present

    // Step 3: Check if the Login button is present
    expect(find.byKey(Key('loginButton')),
        findsOneWidget); // Use key to find the button

    // Step 4: Enter text in the Email and Password fields
    await tester.enterText(find.byType(CustomTextField).at(0),
        'test@example.com'); // Enter text in Email field
    await tester.enterText(find.byType(CustomTextField).at(1),
        'password123'); // Enter text in Password field

    // Step 5: Tap the Login button
    await tester.tap(find.byKey(Key('loginButton')));

    // Step 6: Wait for any animations or transitions
    await tester.pumpAndSettle();

    // Step 7: Optionally, check for any subsequent behavior
    // For example, if a loading indicator appears or if a new page is navigated to.
    // expect(find.byType(CircularProgressIndicator), findsOneWidget); // Check if loading indicator appears
  });
}
