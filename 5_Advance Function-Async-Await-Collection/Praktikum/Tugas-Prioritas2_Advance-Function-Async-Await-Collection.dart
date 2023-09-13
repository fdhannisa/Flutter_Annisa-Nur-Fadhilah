import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<List<int>> myList = [
    [0, 1],
    [3, 4],
    [6, 8]
  ];

  // // manggil list di inedex 1
  List<int> pertama = myList[1];
  print(pertama);

  //convert list to map
  Map map = {for (var item in myList) '$item': '$item'};
  print(map);

  //Menghitung rata rata
  String? input = stdin.readLineSync()!;
  List<String> nilai = input.split(' ');

  // Mengonversi nilai-nilai ke dalam tipe data yang sesuai (misalnya, int)
  List<int> nilaiInt = [];

  for (String angka in nilai) {
    nilaiInt.add(int.parse(angka));
  }

  //print nilai di dalam list
  print('$nilaiInt');

  //rata-rata
  int rataRata = hitungRataRata(nilaiInt);
  print('Rata-rata: $rataRata');
}

int hitungRataRata(List<int> nilaiInt) {
  int jumlah = 0;

  for (int hasiljumlah in nilaiInt) {
    jumlah += hasiljumlah;
  }

  double rataRataDouble = jumlah / nilaiInt.length;
  return rataRataDouble.ceil();
}
