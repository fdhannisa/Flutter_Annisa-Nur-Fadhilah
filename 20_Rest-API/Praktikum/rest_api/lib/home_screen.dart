import 'package:flutter/material.dart';
import 'package:rest_api/tugas1.dart';
import 'package:rest_api/tugas2.dart';
import 'package:rest_api/tugas3.dart';
import 'package:rest_api/tugas4.dart';
import 'package:rest_api/tugas5.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest Api"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Tugas1Screen()),
              );
            },
            title: Text("Tugas 1"),
            trailing: Icon(Icons.chevron_right_rounded),

          ),
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Tugas2Screen()),
              );
            },
            title: Text("Tugas 2"),
            trailing: Icon(Icons.chevron_right_rounded),
          ),
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Tugas3Screen()),
              );
            },
            title: Text("Tugas 3"),
            trailing: Icon(Icons.chevron_right_rounded),
          ),
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Tugas4Screen()),
              );
            },
            title: Text("Tugas 4"),
            trailing: Icon(Icons.chevron_right_rounded),
          ),
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Tugas5Screen()),
              );
            },
            title: Text("Tugas 5"),
            trailing: Icon(Icons.chevron_right_rounded),
          ),
        ],
      ),
    );
  }
}
