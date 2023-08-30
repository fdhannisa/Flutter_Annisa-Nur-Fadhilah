Future<void> main() async {
  List<int> angkalist = [10, 20, 30, 40, 50];
  int pengali = 2;

  List<int> hasil = await data(angkalist, pengali);
  print('$hasil');
}

Future<List<int>> data(List<int> angkalist, int pengali) async {
  List<int> hasil = [];

  for (int angka in angkalist) {
    int hasilAngka = angka * pengali;
    await Future.delayed(Duration(seconds: 1));
    hasil.add(hasilAngka);
  }
  return hasil;
}

// Future<void> main() async {
//   List<int> angkalist = [10, 20, 30, 40, 50];
//   int pengali = 2;

//   await data(angkalist, pengali);
//   Future<List<int>> hasilFuture = data(angkalist, pengali);

//   hasilFuture.then((List<int> hasil) {
//     print("Hasil dari Future function: $hasil");
//   });
// }

// // double data(int jumlah, List<double> angka) {
// //   List<String> huruf = List<String>.filled(jumlah, "abc");
// //   double itung = angka[3] * jumlah;
// //   return itung;
// Future<List<int>> data(List<int> angkalist, int pengali) async {
//   List<int> nomor = [];
//   for (int angka in angkalist) {
//     int hasil = angka * pengali;
//     await Future.delayed(Duration(seconds: 1));
//     // print(hasil);
//     nomor.add(hasil);
//   }
//   return nomor;
// }
