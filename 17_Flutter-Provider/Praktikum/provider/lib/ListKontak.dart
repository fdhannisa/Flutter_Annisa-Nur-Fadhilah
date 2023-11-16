import 'package:assets/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:assets/kontak.dart';
import 'EditKontakPage.dart';


class ListKontak extends StatefulWidget {
  const ListKontak({Key? key}) : super(key: key);

  @override
  _ListKontakState createState() => _ListKontakState();
}

class _ListKontakState extends State<ListKontak> {
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
        body: ListView.builder(
          itemCount: kontak.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                child: Text(
                    kontak[index].image == null ? kontak[index].username[0] : kontak[index].image),
              ),
              title: Text(kontak[index].username),
              subtitle: Text(kontak[index].nomor),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      // Panggil fungsi untuk edit
                      _editContact(context, index);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Panggil fungsi untuk delete
                      _deleteContact(context, index);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _deleteContact(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Hapus Kontak'),
          content: Text('Anda yakin ingin menghapus kontak ini?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog konfirmasi
              },
              child: Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  kontak.removeAt(index);
                });
                Navigator.of(context).pop(); // Tutup dialog konfirmasi
              },
              child: Text('Hapus'),
            ),
          ],
        );
      },
    );
  }

  void _editContact(BuildContext context, int index) {
    Kontak selectedKontak = kontak[index];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditKontakPage(
          kontak: selectedKontak,
          onUpdate: (updatedKontak) {
            setState(() {
              kontak[index] = updatedKontak;
            });
          },
        ),
      ),
    );
  }

}

