import 'package:flutter/material.dart';
import 'contact_model.dart';

class ContactViewModel with ChangeNotifier {
  var formKey = GlobalKey<FormState>();
  var inputControllerNoHP = TextEditingController();
  var inputControllerNama = TextEditingController();

  List<ContactModel> _contactList = [];

  DateTime _dueDate = DateTime.now();
  DateTime currentDate = DateTime.now();
  Color _currentColor = Colors.black26;
  String? _filePath;

  List<ContactModel> get contactList => _contactList;

  DateTime get dueDate => _dueDate;

  set dueDate(DateTime value) {
    _dueDate = value;
  }

  DateTime get currentDate => currentDate;

  Color get currentColor => _currentColor;

  set currentColor(Color value) {
    _currentColor = value;
  }

  String? get filePath => _filePath;

  set filePath(String? value) {
    _filePath = value;
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
    ContactModel contactModel = ContactModel(
      name: "${inputControllerNama.text}",
      nohp: "${inputControllerNoHP.text}",
      color: _currentColor,
      dueDate: _dueDate,
      filePath: _filePath,
    );
    _contactList.insert(0, contactModel);
    clearForm();
    notifyListeners();
  }

  void clearForm() {
    inputControllerNoHP.clear();
    inputControllerNama.clear();
    _currentColor = Colors.black26;
    _dueDate = DateTime.now();
    _filePath = null;
  }

  void deleteContact(int index) {
    _contactList.removeAt(index);
    notifyListeners();
  }
}