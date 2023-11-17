import 'package:flutter/material.dart';
import 'contact_view_model.dart';

class ContactForm extends StatelessWidget {
  final ContactViewModel contactViewModel;

  const ContactForm({Key? key, required this.contactViewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: contactViewModel.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "Nama",
            ),
            controller: contactViewModel.inputControllerNama,
            validator: (value) {
              if ((value?.trim().split(' ').length ?? 1) < 2) {
                return 'Name must be filled with two characters';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "No. HP",
            ),
            controller: contactViewModel.inputControllerNoHP,
          ),
        ],
      ),
    );
  }
}
