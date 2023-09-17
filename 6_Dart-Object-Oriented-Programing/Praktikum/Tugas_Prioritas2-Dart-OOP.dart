class Calculator {
  double tambah(double num1, double num2) {
    return num1 + num2;
  }

  double minus(double num1, double num2) {
    return num1 - num2;
  }

  double times(double num1, double num2) {
    return num1 * num2;
  }

  double devide(double num1, double num2) {
    if (num2 == 0) {
      throw Exception("Pembagian oleh nol tidak diizinkan.");
    }
    return num1 / num2;
  }
}

void main() {
  Calculator calculator = Calculator();

  print('Penjumlahan: ${calculator.tambah(5, 3)}');
  print('Penjumlahan: ${calculator.minus(5, 3)}');
  print('Penjumlahan: ${calculator.times(5, 3)}');
  print('Penjumlahan: ${calculator.devide(5, 3)}');
}
