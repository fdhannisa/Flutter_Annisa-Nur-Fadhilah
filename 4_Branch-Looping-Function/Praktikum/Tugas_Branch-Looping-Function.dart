import 'dart:io';

void main() {
  // Huruf Mutu
  print("Masukkan Nilai : ");
  String input = stdin.readLineSync()!;
  int number = int.parse(input);

  if (number > 70) {
    print('A');
  }
  if (number > 40) {
    print('B');
  }
  if (number > 0) {
    print('C');
  } else
    () {
      print('');
    };

  //perulangan
  print('\n');
  perulangan();
}

void perulangan() {
  int i = 10;
  for (int i = 1; i < 11; i++) {
    print(i);
  }
}
