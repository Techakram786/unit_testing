import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/main.dart';
import 'package:unit_testing/view/unit_test_page.dart';




void main(){
  testWidgets('Floating Button Widget Test', (WidgetTester tester) async{
    await tester.pumpWidget(MyApp());
   /* //Act - Find button by type
    var textfield = find.byType(TextField);

    //Assert - Check that button widget is present
    expect(textfield, findsOneWidget);*/

    //Act - Find button by type
    var fab = find.byType(FloatingActionButton);

    //Assert - Check that button widget is present
    expect(fab, findsOneWidget);
  });

  testWidgets('TextForm Field Widget Test', (WidgetTester tester) async{
    await tester.pumpWidget(MaterialApp(
      home: UnitTestPage(),
    ));
     //Act - Find button by type
    var textfield = find.byType(TextField);

    //Assert - Check that button widget is present
    expect(textfield, findsOneWidget);
  });

  testWidgets('TextForm Field Widget Test', (WidgetTester tester) async{
    await tester.pumpWidget(MaterialApp(
      home: UnitTestPage(),
    ));
    //Act - Find button by type
    final textwidget=find.byKey(ValueKey('tf1'));

    await tester.enterText(textwidget, 'Hi I Am Akram');//but not showing emulator or chrome
    expect(find.text('Hi I Am Akram'), findsOneWidget);
  });
}