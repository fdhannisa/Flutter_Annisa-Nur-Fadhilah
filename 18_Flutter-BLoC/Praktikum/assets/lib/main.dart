import 'package:assets/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ListKontakBloc.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ListKontakBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

