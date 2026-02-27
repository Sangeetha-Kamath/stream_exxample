// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:stream_example/stream_example.dart';

void main() {
  testWidgets('stream emits the number and shows the first value', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: StreamExample()));
    //show loader initially becuase the stream is not emitted yet
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pump(const Duration(milliseconds: 2));
    await tester
        .pump(); //rebuild after 2 seconds because stream emits it receives value

    // Verify that our counter starts at 0.
    expect(find.text("0"),findsOne);
  });
}
