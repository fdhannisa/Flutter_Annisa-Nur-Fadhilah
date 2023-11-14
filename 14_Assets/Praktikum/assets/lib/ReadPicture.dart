import 'package:assets/HomePage.dart';
import 'package:assets/ListKontak.dart';
import 'package:flutter/material.dart';

class ReadPicture extends StatelessWidget {
  const ReadPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(title: const Text('Flutter Asset'),
          backgroundColor: Colors.orange,
        ),

      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Contact'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListKontak()),
                );
              },
            ),
            ListTile(
              title: const Text('Pictures'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ],
        ),
      ),

        body:
            Container(
                padding: const EdgeInsets.all(8),
                  child: Image.asset('assets_folder/params.png'),
            ),
    );

  }
}