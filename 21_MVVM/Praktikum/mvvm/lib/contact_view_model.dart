import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'contact_data.dart';

class ContactViewModel {
  var formKey = GlobalKey<FormState>();
  var inputControllerNoHP = TextEditingController();
  var inputControllerNama = TextEditingController();

  List<ContactData> _contactList = [];

  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.black26;

  TextEditingController get ControllerNama => inputControllerNama;
  TextEditingController get ControllerNoHP => inputControllerNoHP;
  List<ContactData> get contactList => _contactList;
  DateTime get dueDate => _dueDate;
  set dueDate(DateTime value) {
    _dueDate = value;
  }

  DateTime get getCurrentDate => currentDate;
  Color get currentColor => _currentColor;
  set currentColor(Color value) {
    _currentColor = value;
  }

  bool isInputValid() {
    return inputControllerNoHP.text.startsWith('0') &&
        formKey.currentState?.validate() == true;
  }

  void onSubmitForm() {
    if (isInputValid()) {
      addContact();
    }
  }

  void addContact() {
    ContactData contactData = ContactData(
      name: "${inputControllerNama.text}",
      nohp: "${inputControllerNoHP.text}",
      dueDate: _dueDate,
      color: _currentColor,
      filePath: _filePath,
    );
    _contactList.insert(0, contactData);
    clearForm();
  }

  void clearForm() {
    inputControllerNoHP.clear();
    inputControllerNama.clear();
    _dueDate = DateTime.now();
    _currentColor = Colors.black26;
    _filePath = null;
  }

  void deleteContact(int index) {
    _contactList.removeAt(index);
  }

  Future<void> pickAndOpenFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    final file = result.files.first;
    _filePath = file.path;
    openFile(file);
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path);
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
                        _currentColor = color;
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

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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

            if (selectDate != null) {
              _dueDate = selectDate;
            }
          },
          child: const Text('Select'),
        ),
        Text(
          DateFormat('dd-MM-yy').format(_dueDate),
        ),
      ],
    );
  }

  String? _filePath;

  Widget buildFilePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Pick File'),
        const SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            onPressed: () {
              pickAndOpenFile();
            },
            child: const Text('Pick and Open File'),
          ),
        ),
      ],
    );
  }
}

