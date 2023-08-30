class Hewan {
  reproduksi() {
    print("tidak tahu");
  }

  bernafas() {
    print("Menggunakan : ");
  }
}

class Ikan implements Hewan {
  @override
  bernafas() {
    print("Bernafas dengan : Insang");
  }

  @override
  reproduksi() {
    print("Bertelur");
  }
}

abstract class Hero {
  bio() {
    print("Hero ini bernama :");
  }

  jenis() {
    print("Hero ini berjenis: ");
  }
}

class Miya extends Hero {
  @override
  bio() {
    print("Miya");
  }

  @override
  jenis() {
    print("Sage");
  }
}

void main() {
  // memanggil method override pada class Ikan
  var ikn = Ikan();
  ikn.bernafas();
  ikn.reproduksi();

  var h1 = Miya();
  h1.bio();
  h1.jenis();

  // Abstract class tidak bisa langsung membuat object baru
  /*ex. var h1 = Hero();
  h1.bio();
  h1.Jenis();*/
}
