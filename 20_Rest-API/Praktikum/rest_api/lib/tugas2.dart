import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Tugas2Screen extends StatefulWidget {
  const Tugas2Screen({super.key});

  @override
  State<Tugas2Screen> createState() => _Tugas2ScreenState();
}

class _Tugas2ScreenState extends State<Tugas2Screen> {
  final dio = Dio();
  Contact contact = new Contact(0, "", "");

  @override
  void initState() {
    getContact();
    super.initState();
  }

  getContact() async {
    final response = await dio.get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2');
    contact = Contact(
        response.data['id'], response.data['name'], response.data['phone']);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas 2"),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Text("Kontak ID : ${contact.id}"),
          SizedBox(height: 8),
          Text("Kontak Nama : ${contact.name}"),
          SizedBox(height: 8),
          Text("Kontak No HP : ${contact.phone}"),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}

class Contact {
  final int id;
  final String name;
  final String phone;

  Contact(this.id, this.name, this.phone);
}
