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
