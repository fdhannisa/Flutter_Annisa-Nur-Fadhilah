import 'package:assets/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:assets/kontak.dart';
import 'ListKontakBloc.dart';
import 'list_kontak_bloc.dart';

class ListKontak extends StatelessWidget {
  const ListKontak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: const Text('Flutter Asset'),
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
        body: StreamBuilder<int>(
          stream: listKontakBloc.selectedKontakStream,
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: kontak.length,
              itemBuilder: (context, index) => Card(
                color: snapshot.data == index ? Colors.blue : null,
                child: ListTile(
                  onTap: () {
                    listKontakBloc.selectKontak(index);
                  },
                  leading: CircleAvatar(
                    radius: 28,
                    child: Text(
                      kontak[index].image == null
                          ? kontak[index].username[0]
                          : kontak[index].image,
                    ),
                  ),
                  title: Text(kontak[index].username),
                  subtitle: Text(kontak[index].nomor),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

