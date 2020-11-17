import 'package:flutter_test/flutter_test.dart';

import 'package:teste_de_widgets_simples/main.dart';

void main() {
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyWidget(title: 'T', message: 'M'));
    // create the finders
    final titleFinder = find.text('T');
    final messageFinder = find.text('M');
    // Use the `findsOneWidget` matcher provided by flutter_test to verify
    // that the Text widgets appear exactly once in the widget tree.
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
