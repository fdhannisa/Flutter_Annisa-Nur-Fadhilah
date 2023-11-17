import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Tugas3Screen extends StatefulWidget {
  const Tugas3Screen({super.key});

  @override
  State<Tugas3Screen> createState() => _Tugas3ScreenState();
}

class _Tugas3ScreenState extends State<Tugas3Screen> {
  final dio = Dio();
  var response;

  putContact() async {
    response = await dio.put(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2',
        data: {
          'id': 1,
          'title': "foo",
          'body': "bar",
          'userId': 1,
        });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas 3"),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          TextButton(
              onPressed: () {
                putContact();
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
