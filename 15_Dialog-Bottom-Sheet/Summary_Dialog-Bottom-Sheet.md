Cara membuat task management :

1. membuat model untuk informasi yang mau disimpan, buat folder baru bernama models pada folder lib, lalu membuat file bernama task_model.dart

class TaskModel{
//property
final String id;
final String taskName;

    //cunstroctor
    required this.id,
    required this.taskName,

}

2. Membuat folder bari pada lib, dengan nama folder Screen. Lalu membuat file dengan nama task_screen.dart

import 'package:flutter/material.dart'

class TaskScreen extands StatelessWidget {
const TaskScreen({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Task Management'),
centerTitle: true, // membuat title berqada di tengah
)
)
}
}

3. Lalu pada main.dart dapat kita buat

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Demo',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: TaskScreen(),
)
}

jika ingin membuat screens, buat file baru padqa folder screens saja.
