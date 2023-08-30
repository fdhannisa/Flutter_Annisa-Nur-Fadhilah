//import 'constructor.dart';
//bisa digunakan jika constructor dalam bentuk file sendiri. Untuk memanggil constructor

class Hewan {
  int mata = 2;
  int jari = 5;
  String nama = "Guuk";

//materi deep dive
  int? kaki;

//Konstruktor
  Hewan() {
    mata = 0;
    kaki = 0;
  }

  reproduksi() {
    print("tidak tahu");
  }

  bernafas() {
    print("Menggunakan : ");
  }
}

class Kucing {
  void bersuara() {
    print("Meong..");
  }
}

//inheritence
class Kambing extends Hewan {
  Kambing() {
    mata = 4;
    kaki = 8;
  }

  @override
  bernafas() {
    print("Bernafas menggunakan : Paru-Paru");
  }

  @override
  reproduksi() {
    print("Melahirkan");
  }
}

//interface

void main() {
  var h1 = Hewan();
  print(h1.mata);
  print(h1.jari);
  print(h1.nama);

  var h2 = Kucing();
  h2.bersuara();

  //materi deep dive
  //object baru berupa hewan dengan menggunakan class Hewan
  var hewan = Hewan();
  //ngambil niali dari konstruktor
  print(hewan.kaki);
  print(hewan.mata);

  var k1 = Kambing();
  print(k1.mata);
  print(k1.kaki);

  //manggil method override pada class kambing
  k1.bernafas();
  k1.reproduksi();
}
