import 'dart:io';
import 'dart:math';

void main() {
  print("Soal Prioritas 1");
  persegi();
  print("\n");
  persegi_panjang();
  print("\n");
  lingkaran();
  print("\nSoal Prioritas 2");
  Interpolasi();
  print("\n");
  tabung();
}

//Keliling dan Luas Persegi
persegi() {
  var s = 2;
  var luas = s * s;
  var keliling = 4 * s;
  print("Luas Persegi = " + luas.toString());
  print("Keliling Persegi = " + keliling.toString());
}

//Keliling dan Luas Persegi Panjang
persegi_panjang() {
  var p = 4;
  var l = 2;
  var luas = p * l;
  var keliling = 2 * (p + l);
  print("Luas Persegi Panjang = " + luas.toString());
  print("Luas Persegi Panjang = " + luas.toString());
}

//Keliling dan Luas Lingkaran
lingkaran() {
  var r = 7;
  var d = r * r;
  var luas = pi * r * r;
  var keliling = pi * d;
  print("Luas Lingkaran = " + luas.toString());
  print("Keliling Lingkaran = " + keliling.toString());
}

//Menggabungkan 3 buah string
Interpolasi() {
  String s1 = "Saya sedang";
  String s2 = "mengikuti study independen";
  String s3 = "di Alterra Academy.";
  print("$s1 $s2 $s3");
}

tabung() {
  var r = 7;
  var t = 10;
  var volume = pi * r * r * t;
  print("Volume Tabung = " + volume.toString());
}
