Future<int> hitungFaktorial(int n) async {
  int faktorial = 1;
  for (int i = 1; i <= n; i++) {
    faktorial *= i;
  }
  return faktorial;
}

void main() async {
  int angka = 5;
  int faktorial = await hitungFaktorial(angka);
  print('$faktorial');
}
