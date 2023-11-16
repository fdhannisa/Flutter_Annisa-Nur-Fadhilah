import 'dart:async';

class HomeBloc {
  final _imageStreamController = StreamController<String>();

  Stream<String> get imageStream => _imageStreamController.stream;

  void selectImage(String imagePath) {
    _imageStreamController.add(imagePath);
  }

  void dispose() {
    _imageStreamController.close();
  }
}

final homeBloc = HomeBloc();
