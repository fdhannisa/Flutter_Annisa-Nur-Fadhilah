import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Tugas4Screen extends StatefulWidget {
  const Tugas4Screen({super.key});

  @override
  State<Tugas4Screen> createState() => _Tugas4ScreenState();
}

class _Tugas4ScreenState extends State<Tugas4Screen> {
  final dio = Dio();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas 4"),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Center(
            child: nameController.text.isNotEmpty
                ? Image.network(
                    'https://api.dicebear.com/7.x/${nameController.text}/svg',
                    height: 100,
                    width: 100,
                  )
                : Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey,
                  ),
          ),
          SizedBox(height: 24),
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Nama Gambar"),
          ),
          SizedBox(height: 24),
          TextButton(
              onPressed: () {
                setState(() {});
              },
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              child: Text(
                "LIHAT GAMBAR",
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}
