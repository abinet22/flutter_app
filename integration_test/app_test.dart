import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_app/main.dart'; // Replace with your app's import

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('My first integration test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp()); // Replace MyApp with your app's widget
    await tester.pumpAndSettle(); // Wait for animations and builds

    // Check if the 'Welcome' text is displayed
    expect(find.text('Welcome'),
        findsOneWidget); // Adjust according to your app's text
  });
}
