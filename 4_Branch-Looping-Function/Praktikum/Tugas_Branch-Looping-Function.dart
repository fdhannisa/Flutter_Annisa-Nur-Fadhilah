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

  var num1 = 10;
  var num2 = 20;
  var num3 = 30;

  printFactors(num1);
  printFactors(num2);
  printFactors(num3);
}

void printFactors(int number) {
  print("Faktor dari $number adalah:");
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      print(i);
    }
  }
}
