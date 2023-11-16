import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storage/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  final inputControllerNoHP = TextEditingController();
  final inputControllerNama = TextEditingController();

  late SharedPreferences logindata;
  String username = '';
  List<ContactData> contactList = [];
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color currentColor = Colors.black26;

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username').toString();
    });
  }

  doSubmitForm() {
    ContactData contactData = ContactData(
      name: "${inputControllerNama.text}",
      nohp: "${inputControllerNoHP.text}",
    );
    contactList.insert(0, contactData);
    doClearForm();
  }

  doClearForm() {
    setState(() {
      inputControllerNoHP.clear();
      inputControllerNama.clear();
    });
  }

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
            Text('Selamat Datang Kembali ' + username),
            buildContact(context),
            buildDatePicker(context),
            buildColorPicker(context),
            buildFilePicker(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (inputControllerNoHP.text.startsWith('0')) {
                    if (formKey.currentState!.validate()) {
                      doSubmitForm();
                    }
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: const Text('Gagal'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ),
            buildContactList(context),
            SizedBox(
              height: 40,
              width: 400,
              child: ElevatedButton(
                onPressed: () async {
                  logindata.setBool('login', true);
                  logindata.remove('username');
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
                child: Text(
                  'Keluar',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContact(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Nama",
            ),
            controller: inputControllerNama,
            validator: (value) {
              if ((value?.trim().split(' ').length ?? 1) < 2) {
                return 'Name must be filled with two character';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "No. HP",
            ),
            controller: inputControllerNoHP,
          ),
        ],
      ),
    );
  }

  Widget buildContactList(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        ContactData contactData = contactList[index];
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
                        icon: const Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: contactList.length,
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Date'),
            TextButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: DateTime(1990),
                  lastDate: DateTime(currentDate.year + 5),
                );

                setState(() {
                  if (selectDate != null) {
                    _dueDate = selectDate;
                  }
                });
              },
              child: const Text('Select'),
            ),
            Text(
              DateFormat('dd-MM-yy').format(_dueDate),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Color'),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 100,
          width: double.infinity,
          color: currentColor,
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(currentColor),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Pick Your Color'),
                    content: ColorPicker(
                      pickerColor: currentColor,
                      onColorChanged: (color) {
                        setState(() {
                          currentColor = color;
                        });
                      },
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Pick Color'),
          ),
        )
      ],
    );
  }

  Widget buildFilePicker(){
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start ,
      children: [
        const Text('Pick File'),
        const SizedBox(height: 10,
        ),
        Center(
          child: ElevatedButton(onPressed: (){
            _pickFile();
          },
            child: const Text('Pick and Open File'),
          ),
        ),
      ],
    );
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    final file = result.files.first;
    _openFile(file);
  }

  void _openFile(PlatformFile file){
    OpenFile.open(file.path);
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

