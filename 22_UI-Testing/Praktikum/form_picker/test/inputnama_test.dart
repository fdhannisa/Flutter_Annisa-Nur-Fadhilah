import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_picker/home_page.dart';

void main(){
  testWidgets('Widget Tidak Ada', (WidgetTester tester) async {
  await tester.pumpWidget(const MaterialApp( home: HomePage()));

  var textFormFieldNama = find.text("Nama");
  expect(textFormFieldNama, findsOneWidget);
  // await tester.enterText(textFormFieldNama, "Dhill");

  var textFormFieldNoHp = find.text("No. HP");
  expect(textFormFieldNoHp, findsOneWidget);

  // var textButton = find.text("Select");
  // expect(textButton, findsOneWidget);
  //
  // var buttonColor = find.text("Pick Color");
  // expect(buttonColor, findsOneWidget);
  //
  // var buttonFile = find.text("Pick and Open File");
  // expect(buttonFile, findsOneWidget);

  var buttonSubmit = find.text("Submit");
  expect(buttonSubmit, findsOneWidget);
  });
  
}