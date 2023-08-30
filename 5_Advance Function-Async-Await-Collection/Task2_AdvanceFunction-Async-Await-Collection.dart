void main() {
  List<List<int>> huruflist = [
    [a, b, c],
    [b, d, g],
  ];
  for (List<int> sublist in huruflist) {
    for (int elemen in sublist) {
      print(elemen);
    }
  }
}
