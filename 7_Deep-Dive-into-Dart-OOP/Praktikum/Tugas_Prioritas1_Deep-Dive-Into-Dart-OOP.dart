class BangunRuang {
  double panjang = 4;
  double lebar = 3;
  double tinggi = 1;

  volume() {}
}

class Kubus extends BangunRuang {
  double sisi = 3;

  @override
  volume() {
    double hasil = sisi * sisi * sisi;
    print('Volume Kubus : $hasil');
  }
}

class Balok extends BangunRuang {
  @override
  volume() {
    double hasil = panjang * lebar * tinggi;
    print('Volume Balok : $hasil');
  }
}

void main() {
  BangunRuang bangun = Kubus();
  bangun.volume();

  BangunRuang bangun1 = Balok();
  bangun1.volume();
}
