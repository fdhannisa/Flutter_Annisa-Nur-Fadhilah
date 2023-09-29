import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class FlutterForm extends StatefulWidget{
  const FlutterForm({Key? key}) : super(key: key);
  @override
  _FlutterFormState createState() => _FlutterFormState();
}
class _EmailValidation extends StatefulWidget{
  TextEditingController emailController = TextEditingController();

  void validateEmail(){
    final bool isValid = EmailValidator.validate(emailController.text.trim());


    if(isValid){
      ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("valid email"))
      );
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("InValid email"))
      );
    }
    }
  }

}
class _FlutterFormState extends State<FlutterForm>{
  var formKey = GlobalKey<FormState>();
  var inputControllerLastName = TextEditingController();
  var inputControllerFirstName = TextEditingController();
  var emailController  = TextEditingController();

  @override
  void dispose() {
    inputControllerLastName.dispose();
    inputControllerFirstName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ice Cream '),
        centerTitle: true,
        actions: <Widget> [
          Icon(Icons.icecream,
          size: 40),
        ],
        backgroundColor: Colors.lightBlueAccent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10  ),
            )
          ),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget> [
                Align(alignment: Alignment.topCenter,
                  child: Icon(Icons.icecream,
                  color: Colors.black,
                  size: 100,),
                ),
                Align(alignment: Alignment.center,
                child: Text('Es krim lembut dan lezat meleleh dilidah, '
                    'menghadirkan kebahagiaan dalam setiap suapan, seolah - olah mengajak'
                    ' kita berkeliling dunia rasa yang tak terbatas',
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.black54)
                    ),
                ),
                ),

                Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "First Name",
                            prefixIcon: Padding(padding:
                              EdgeInsets.symmetric(vertical: 10),
                            ),
                          ),
                          controller: inputControllerFirstName,
                        ),
                    ),

                    const SizedBox(width: 40),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Last Name",
                          prefixIcon: Padding(padding:
                          EdgeInsets.symmetric(vertical: 10),
                          ),
                        ),
                        controller: inputControllerLastName,
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                  validator: (value){
                    if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)){
                      //allow upper and lower case alphabets and space
                      return "Enter Correct Name";
                    }else{
                      return null;
                    }
                  },
                  controller: emailController,
                ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                    controller: emailController,
                  ),
                  ],
                  ),
          ),
        ),
      )

    );
  }

}