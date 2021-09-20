import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_practice/pages/alert_dialog_page.dart';

void main() {
  final firstPageTitle = find.text('Alert Dialog Page');
  final secondPageTitle = find.text('Next Page');
  final buttonText = find.text('Open Alert Dialog');
  final dialogContentText = find.text('Do you want to go to next page?');

  testWidgets('alert dialog smoke test', (tester) async {
    await tester.pumpWidget(MaterialApp(home: AlertDialogPage()));

    expect(firstPageTitle, findsOneWidget);

    await tester.tap(buttonText);
    await tester.pumpAndSettle();

    expect(dialogContentText, findsOneWidget);

    await tester.tap(find.text('Yes'));
    await tester.pumpAndSettle();

    expect(secondPageTitle, findsOneWidget);
  });
}
