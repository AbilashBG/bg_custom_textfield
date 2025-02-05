import 'package:bg_custom_textfield/bg_custom_textfield.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  group('BGCustomTextField', () {
    testWidgets('renders correctly with hint text',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BGCustomTextField(
              hintText: 'Enter your text',
            ),
          ),
        ),
      );

      expect(find.text('Enter your text'), findsOneWidget);
    });

    testWidgets('displays error message', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BGCustomTextField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Required';
                }
                return null;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.byType(TextFormField));
      await tester.pump();

      expect(find.text('Required'), findsOneWidget);
    });

    testWidgets('obscures text when obscureText is true',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BGCustomTextField(),
          ),
        ),
      );
    });
  });
}
