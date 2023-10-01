import 'package:flutter/material.dart';

class FlutterForm extends StatefulWidget{
  const FlutterForm({Key? key}) : super(key: key);
  @override
  _FlutterFormState createState() => _FlutterFormState();
}

class _FlutterFormState extends State<FlutterForm>{
  var formKey = GlobalKey<FormState>();
  var inputControllerNoHP = TextEditingController();
  var inputControllerNama = TextEditingController();

  List<ContactData> contactList = [];

  doSubmitForm() {
    ContactData contactData = ContactData(
      name: "${inputControllerNama.text}",
      nohp : "${inputControllerNoHP.text}",
    );
    contactList.insert(0, contactData);
    doClearForm();
  }

  doClearForm(){
    setState(() {
      inputControllerNoHP.clear();
      inputControllerNama.clear();
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Form'),
      ),
          body: Form(
            key: formKey,
            child: ListView(
              padding: const EdgeInsets.all(24),
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nama",
                  ),
                  controller: inputControllerNama,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Must be filled';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "No. HP",
                  ),
                  controller: inputControllerNoHP,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Must be filled';
                    }
                    return null;
                  },
                ),
                Row(
                    children: [
                Expanded(
                child: TextButton(
                onPressed: () {
                    if (formKey.currentState!.validate()) {
                      doSubmitForm();
                    }
                  },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
                 child: Text("Submit",
                style: TextStyle(color: Colors.white),
                ),
                ),
                ),
                    ],
                ),

                SizedBox(height: 24),
                contactList.isEmpty
                    ? Container()
                    : ListView.separated(
                    shrinkWrap: true,
                    primary: false,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      ContactData contactData = contactList[index];
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 28,
                          child: Text(contactData.name!),
                        ),
                        title: Text(contactData.name!),
                        subtitle:Text(contactData.nohp!),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: contactList.length),

              ],
            ),
          ),
    );
  }
}

class ContactData {
  String? name;
  String? nohp;


  ContactData({
    this.name,
    this.nohp,
  });
}