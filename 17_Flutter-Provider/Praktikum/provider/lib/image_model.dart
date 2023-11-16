import 'package:flutter/material.dart';

class ImageModel extends ChangeNotifier {
  List<String> imagePaths = [
    'assets_folder/params.png',
    'assets_folder/params.png',
    'assets_folder/params.png',
    'assets_folder/params.png',
  ];

  void addImagePath(String path) {
    imagePaths.add(path);
    notifyListeners();
  }
}
