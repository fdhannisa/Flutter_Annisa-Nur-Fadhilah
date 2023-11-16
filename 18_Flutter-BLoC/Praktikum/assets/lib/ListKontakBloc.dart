import 'dart:async';
import 'package:flutter/foundation.dart';

class ListKontakBloc extends ChangeNotifier {
  final _selectedKontakStreamController = StreamController<int>();

  Stream<int> get selectedKontakStream => _selectedKontakStreamController.stream;

  void selectKontak(int kontakIndex) {
    _selectedKontakStreamController.add(kontakIndex);
    notifyListeners();
  }

  @override
  void dispose() {
    _selectedKontakStreamController.close();
    super.dispose();
  }
}

final listKontakBloc = ListKontakBloc();

