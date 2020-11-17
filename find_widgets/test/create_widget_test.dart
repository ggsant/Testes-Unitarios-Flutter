import 'package:find_widgets/create_a_widget_to_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Add and remove a todo', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(TodoList());

    // Enter 'hi' into the TextField.
    await tester.enterText(find.byType(TextField), 'hi');
  });

  testWidgets('Add and remove a todo', (WidgetTester tester) async {
    // Enter text code...

    // Tap the add button.
    await tester.tap(find.byType(FloatingActionButton));

    // Rebuild the widget after the state has changed.
    await tester.pump();

    // Expect to find the item on screen.
    expect(find.text('hi'), findsOneWidget);
  });

  testWidgets('Add and remove a todo', (WidgetTester tester) async {
    // Enter text and add the item...

    // Swipe the item to dismiss it.
    await tester.drag(find.byType(Dismissible), Offset(500.0, 0.0));

    // Build the widget until the dismiss animation ends.
    await tester.pumpAndSettle();

    // Ensure that the item is no longer on screen.
    expect(find.text('hi'), findsNothing);
  });
}
