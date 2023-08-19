import 'dart:io';

void main() {
  stdout.write("Masukkan sebuah bilangan: ");
  int number = int.parse(stdin.readLineSync()!);

  print("Faktor dari $number adalah:");
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      print(i);
    }
  }
}
