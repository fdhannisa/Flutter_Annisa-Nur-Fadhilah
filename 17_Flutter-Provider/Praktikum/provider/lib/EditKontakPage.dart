import 'package:flutter/material.dart';
import 'package:assets/kontak.dart';

class EditKontakPage extends StatefulWidget {
  final Kontak kontak;
  final Function(Kontak) onUpdate;

  EditKontakPage({required this.kontak, required this.onUpdate});

  @override
  _EditKontakPageState createState() => _EditKontakPageState();
}

class _EditKontakPageState extends State<EditKontakPage> {
  late TextEditingController _usernameController;
  late TextEditingController _nomorController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController(text: widget.kontak.username);
    _nomorController = TextEditingController(text: widget.kontak.nomor);
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _nomorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Edit Kontak'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _nomorController,
              decoration: InputDecoration(labelText: 'Nomor'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _updateKontak();
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }

  void _updateKontak() {
    Kontak updatedKontak = Kontak(
      username: _usernameController.text,
      nomor: _nomorController.text,
    );

    widget.onUpdate(updatedKontak);
    Navigator.pop(context);
  }
}
