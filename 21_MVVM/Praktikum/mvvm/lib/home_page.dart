import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';

import 'contact_view_model.dart';

class HomePage extends StatelessWidget {
  final ContactViewModel _contactViewModel = ContactViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MVVM Example'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            _contactViewModel.buildContact(context),
            _contactViewModel.buildDatePicker(context),
            _contactViewModel.buildColorPicker(context),
            _contactViewModel.buildFilePicker(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _contactViewModel.onSubmitForm();
                },
                child: const Text('Submit'),
              ),
            ),
            _contactViewModel.buildContactList(context),
          ],
        ),
      ),
    );
  }
}



