import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:boilerplate/main.dart';

void main() {
  testWidgets('Initial route is SignInPage', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the SignInPage is displayed on initial load.
    expect(find.text('Sign In'), findsOneWidget);
    expect(find.text('Sign Up'), findsNothing);
  });

  testWidgets('Navigate to SignUpPage', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Tap on the "Sign Up" text or button (adjust based on your UI).
    await tester.tap(find.text('Sign Up'));
    await tester.pumpAndSettle(); // Wait for animations to complete.

    // Verify that the SignUpPage is displayed.
    expect(find.text('Sign Up'), findsOneWidget);
    expect(find.text('Sign In'), findsNothing);
  });

  testWidgets('Navigate to HomePage after signing in', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Simulate tapping the sign-in button (adjust based on your UI).
    await tester.tap(find.text('Sign In'));
    await tester.pumpAndSettle(); // Wait for animations to complete.

    // Verify that the HomePage is displayed.
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Sign In'), findsNothing);
  });
}
