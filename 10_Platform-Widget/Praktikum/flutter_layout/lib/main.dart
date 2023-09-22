import 'package:flutter/material.dart';
import 'package:flutter_layout/kontak.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context)  {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold
    (appBar: AppBar(
    title: const Text('Flutter Layout'),
    centerTitle: true,
    ),
    drawer: Drawer(
    child: ListView(
    children: [
    ListTile(
    title: const Text('Home'),
    onTap: () {},
    ),
    ListTile(
    title: const Text('Setting'),
    onTap: () {},
    ),
    ],
    ),
    ),
    body:ListView.builder(
    itemCount: kontak.length,
    itemBuilder:(context, index) => Card(
    child: ListTile(
    leading: CircleAvatar(
    radius: 28,
    child: Text(kontak[index].image == null? kontak[index].username[0]:kontak[index].image),
    ),
    title: Text(kontak[index].username),
    subtitle: Text(kontak[index].nomor),

    ),
    ) ,
    ),

        )
    );
  }
}
