int hitungFaktorial(int n) {
  int faktorial = 1;
  for (int i = 1; i <= n; i++) {
    faktorial *= i;
  }
  return faktorial;
}

void main() {
  int angka = 5;
  int faktorial = hitungFaktorial(angka);
  print('$faktorial');
}
