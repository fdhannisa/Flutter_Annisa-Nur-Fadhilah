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
}
