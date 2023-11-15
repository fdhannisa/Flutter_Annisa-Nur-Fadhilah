import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterForm extends StatefulWidget {
  const FlutterForm({Key? key}) : super(key: key);

  @override
  _FlutterFormState createState() => _FlutterFormState();
}

class _FlutterFormState extends State<FlutterForm> {
  var formKey = GlobalKey<FormState>();
  var inputControllerLastName = TextEditingController();
  var inputControllerFirstName = TextEditingController();
  var emailController = TextEditingController();
  var massageController = TextEditingController();

  List<ContactData> contactList = [];

  doSubmitForm() {
    ContactData contactData = ContactData(
      fullName:
          "${inputControllerFirstName.text} ${inputControllerLastName.text}",
      email: emailController.text,
      message: massageController.text,
    );
    contactList.insert(0, contactData);
    doClearForm();
  }

  doClearForm() {
    setState(() {
      inputControllerLastName.clear();
      inputControllerFirstName.clear();
      emailController.clear();
      massageController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Ice Cream '),
          centerTitle: true,
          actions: <Widget>[
            Icon(Icons.store, size: 40),
            SizedBox(width: 16),
          ],
          backgroundColor: Colors.lightBlueAccent,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )
          )
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 45,
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('About Us'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),

            ListTile(
              title: const Text('Contact Us'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            const Align(
              alignment: Alignment.topCenter,
              child: Icon(
                Icons.storefront,
                color: Colors.black,
                size: 100,
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: Text(
                'Es krim lembut dan lezat meleleh dilidah, '
                    'menghadirkan kebahagiaan dalam setiap suapan, seolah - olah mengajak'
                    ' kita berkeliling dunia rasa yang tak terbatas',
                maxLines: 3,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black54)),
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: Text(
                'NEED CONTACT US',
                maxLines: 3,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black54),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: inputControllerFirstName,
                    decoration: InputDecoration(
                      labelText: "First Name",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Must be filled';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 40),
                Expanded(
                  child: TextFormField(
                    controller: inputControllerLastName,
                    decoration: InputDecoration(
                      labelText: "Last Name",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Must be filled';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "you@example.com",
              ),
              controller: emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Must be filled';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Massage",
              ),
              maxLines: 3,
              controller: massageController,
            ),
            SizedBox(height: 24),
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
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 24),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      doClearForm();
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    child: Text(
                      "Reset",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),
            Align(
                alignment: Alignment.center,
                child: Text(
                  "ABOUT US".toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),

            SizedBox(height: 10),

            Align(
                alignment: Alignment.center,
                child: Text(
                  "Berikut ini adalah menu yang terjual laris dari toko kami",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                )),

            SizedBox(height: 30),
            
            Row(
            children: [
              SizedBox(height: 30),
              Expanded(child:
                Card(
                  shadowColor: Colors.grey,
                  child: SizedBox(
                    width: 100,
                    height: 150,
                    child: Center(child:
                    Image.asset('images/menu1.jpeg'),

                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),
              Expanded(child:
              Card(
                shadowColor: Colors.grey,
                child: SizedBox(
                  width: 100,
                  height: 150,
                  child: Center(child:
                  Image.asset('images/menu2.jpeg'),
                  ),
                ),
              ),
              ),

              SizedBox(height: 30),
              Expanded(child:
              Card(
                shadowColor: Colors.grey,
                child: SizedBox(
                  width: 100,
                  height: 150,
                  child: Center(child:
                  Image.asset('images/menu3.jpeg'),
                  ),
                ),
              ),
              ),
            ],
          ),
          ],
        ),
      ),
    );
  }
}

class ContactData {
  String? fullName;
  String? email;
  String? message;

  ContactData({
    this.fullName,
    this.email,
    this.message,
  });
}


