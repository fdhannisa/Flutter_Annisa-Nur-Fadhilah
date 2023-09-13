void main() {
  var num1 = 10;
  var num2 = 40;
  var num3 = 50;

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
