import 'package:flutter/material.dart'; // Import the material package to access common widgets like Text
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_app/main.dart'; // Import your app's main file

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('My first integration test', (WidgetTester tester) async {
    // Pump your app widget
    await tester.pumpWidget(const MyApp()); // Replace with your app's widget
    await tester.pumpAndSettle(); // Wait for animations to finish

    // Debugging: Print all Text widgets in the widget tree
    print(find.byType(Text).evaluate().toList().toString());

    // Check if the 'Welcome' text is displayed
    expect(find.text('Welcome'), findsOneWidget); // Ensure the text matches
  });
}
