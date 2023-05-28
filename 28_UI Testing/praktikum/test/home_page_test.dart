import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:praktikum/page/home_page.dart';

void main() {
  testWidgets("Judul halaman Interactive Widget ", (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: HomePage(),
      ),
    );
    expect(find.text("Interactive Widget"), findsOneWidget);
    expect(find.byType(ElevatedButton), findsNWidgets(2));
    expect(find.byType(TextButton), findsNWidgets(1));
    expect(find.byType(Column), findsNWidgets(3));
    expect(find.text("Pick Files"), findsOneWidget);
  });
}
