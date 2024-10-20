import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart'; // Import Widgetbook
import 'package:flutter_app/screens/login_page.dart'; // Import your pages
import 'package:flutter_app/widgets/custom_elevated_button.dart'; // Import your custom button
import 'package:flutter_app/widgets/custom_text_field.dart'; // Import your custom text field

void main() {
  runApp(
    Widgetbook(
      directories: [
        // Directory for LoginPage
        WidgetbookCategory(
          name: 'Login Page',
          children: [
            // Use 'children' instead of 'widgets'
            WidgetbookComponent(
              name: 'LoginPage',
              useCases: [
                WidgetbookUseCase(
                  name: 'default',
                  builder: (context) => const LoginPage(),
                ),
              ],
            ),
          ],
        ),

        // Directory for Custom Widgets (e.g. CustomElevatedButton, CustomTextField)
        WidgetbookCategory(
          name: 'Custom Widgets',
          children: [
            // Use 'children' instead of 'widgets'
            // CustomElevatedButton
            WidgetbookComponent(
              name: 'CustomElevatedButton',
              useCases: [
                WidgetbookUseCase(
                  name: 'default',
                  builder: (context) => CustomElevatedButton(
                    label: 'Login',
                    onPressed: () {},
                    color: Colors.green,
                    textColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5.0,
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Red Button',
                  builder: (context) => CustomElevatedButton(
                    label: 'Submit',
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5.0,
                  ),
                ),
              ],
            ),

            // CustomTextField
            WidgetbookComponent(
              name: 'CustomTextField',
              useCases: [
                WidgetbookUseCase(
                  name: 'Email Field',
                  builder: (context) => const CustomTextField(
                    label: 'Email',
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Password Field',
                  builder: (context) => const CustomTextField(
                    label: 'Password',
                    obscureText: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
      lightTheme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
    ),
  );
}
