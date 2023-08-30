class Hewan {
  int mata = 2;
  int jari = 5;
  String nama = "Guuk";
}

class Kucing {
  void bersuara() {
    print("Meong..");
  }
}

void main() {
  var h1 = Hewan();
  print(h1.mata);
  print(h1.jari);
  print(h1.nama);

  var h2 = Kucing();
  h2.bersuara();
}
