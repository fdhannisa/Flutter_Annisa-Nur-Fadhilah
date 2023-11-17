import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Tugas1Screen extends StatefulWidget {
  const Tugas1Screen({super.key});

  @override
  State<Tugas1Screen> createState() => _Tugas1ScreenState();
}

class _Tugas1ScreenState extends State<Tugas1Screen> {
  final dio = Dio();
  final idController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  var response;

  postContact() async {
    response = await dio.post(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
        data: {
          'id': idController.text,
          'name': nameController.text,
          'phone': phoneController.text
        });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas 1"),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          TextFormField(
            controller: idController,
            decoration:
                InputDecoration(border: OutlineInputBorder(), labelText: "ID"),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Nama"),
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: phoneController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "No HP"),
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 24),
          TextButton(
              onPressed: () {
                postContact();
              },
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              child: Text(
                "KIRIM",
                style: TextStyle(color: Colors.white),
              )),
          SizedBox(height: 24),
          Text(
            "Hasil Kirim",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text("${response}"),
        ],
      ),
    );
  }
}
