import 'package:flutter/material.dart';
import 'package:flutter_layout2/courses.dart';
import 'package:flutter_layout2/colors.dart';

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
          title: const Text('My Flutter App'),
          backgroundColor: tdbgcolor,
          centerTitle: true,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search),
              ],
            )
          ],
        ),
          body:
            ListView.builder(
              itemCount: course.length,
              itemBuilder:(context, index) => Card(
                child: ListTile(
                  title: Text(course[index].nama_matkul),
                ),
              ),
            ) ,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: tdbgcolor,
            selectedItemColor: tdwhite,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label:'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.info), label:'Information'),
            ]
          ),
          ),







    );
  }
}
