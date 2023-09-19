class Hewan {
  List<int> beratHewan = [];
}

class Mobil {
  int kapasitas = 0; // Total Muatan
  List<String> muatan = []; // List Total nama Muatan
  Hewan hewan = Hewan();

  void tambahMuatan(String muatan) {
    this.muatan.add(muatan);
  }

  void totalMuatan(int kapasitas) {
    if (this.kapasitas < 200) {
      hewan.beratHewan.add(kapasitas);
      for (var i = 0; i < hewan.beratHewan.length; i++) {
        this.kapasitas += hewan.beratHewan[i];
      }
    } else {
      print("Muatan Penuh");
    }
  }
}

void main(List<String> args) {
  Mobil mobil = Mobil();
  Hewan hewan = Hewan();

  mobil.tambahMuatan('Gajah');
  mobil.totalMuatan(30);

  print(hewan.beratHewan);
  print(mobil.kapasitas);
  print(mobil.muatan);
}
