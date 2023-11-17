import 'package:flutter/material.dart';
import 'contact_form_data.dart';
import 'contact_list.dart';
import 'contact_view_model.dart';

class HomePage extends StatelessWidget {
  final ContactViewModel _contactViewModel = ContactViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Widget'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            ContactForm(contactViewModel: _contactViewModel),
            ContactList(contactViewModel: _contactViewModel),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _contactViewModel.onSubmitForm();
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


