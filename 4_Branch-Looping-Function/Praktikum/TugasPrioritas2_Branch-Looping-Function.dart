import 'dart:io';

void main() {
  print("Masukkan Nilai : ");
  String input = stdin.readLineSync()!;
  int n = int.parse(input);
  Piramida(n);
  stdout.write('\n\n');
  PiramidaTerbalik(n);
  Piramida(n);
}

void Piramida(int n) {
  for (int i = 1; i <= n; i++) {
    for (int s = 1; s <= n - i; s++) {
      stdout.write(" ");
    }
    for (int j = 1; j <= i + (i - 1); j++) {
      stdout.write('*');
    }
    stdout.write('\n');
  }
}

void PiramidaTerbalik(int n) {
  for (int i = n; i >= 1; i--) {
    for (int s = 1; s <= n - i; s++) {
      stdout.write(" ");
    }
    for (int j = 1; j <= i + (i - 1); j++) {
      stdout.write('*');
    }
    stdout.write('\n');
  }
}
