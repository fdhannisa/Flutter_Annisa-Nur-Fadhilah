import 'package:flutter/material.dart';
import 'contact_data.dart';
import 'contact_view_model.dart';

class ContactList extends StatelessWidget {
  final ContactViewModel contactViewModel;

  const ContactList({Key? key, required this.contactViewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        ContactData contactData = contactViewModel.contactList[index];
        return Card(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 28,
                    child: Text(contactData.name!),
                  ),
                  Column(
                    children: [
                      Text(contactData.name!),
                      Text(contactData.nohp!),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          contactViewModel.deleteContact(index);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: contactViewModel.contactList.length,
    );
  }
}
