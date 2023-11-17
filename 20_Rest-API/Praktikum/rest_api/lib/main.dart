import 'package:flutter/material.dart';
import 'package:rest_api/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rest Api',
      home: HomeScreen(),
    );
  }
}
