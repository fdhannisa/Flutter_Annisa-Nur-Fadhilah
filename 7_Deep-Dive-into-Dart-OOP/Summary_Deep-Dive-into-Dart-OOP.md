Constructor, mengkonstruksi object baru. Fungsi atau method yang dijalankan saat pembuatan object baru. Dapat menerima parameter tapi tidak memiliki nilai kembali atau return va;lue.
ex. class Hewan{
var mata;
var kaki;

    //Constructor, mirip dengan membuat method tetapi tidak menggunakan void dan ada
    Hewan(){
        mata = 2;
        kaki = 2;
    }

}

inheritence, pewarisan atau adalah kemampuan membuat class baru dengan memanfaatkan class yang sudah ada.
ex contoh pewarisan sifat dari orang tua ke anak.
ex.
class Kambing extends Hewan {
Kambinb(){
mata = 2;
kaki = 4;
}
}

override, menulis ulang method yang ada di superclass. Bertujuan agar memiliki method yang sama dengan proses yang berbeda.
hal yang harus diperhatikan saam melakukan override:

1. dilakukan pada class inheritence
2. method sudah ada pada superclass
3. method ditulis ulang seperti membuat method baru pada class anak
4. menambahkan @override di baris sblm method dibuat

Interface, class yang menunjukan method apa saja yang ada pada suatu class. Seluruh method wajib di override. Digunakan dengan kata kunci implements. Class yang melakukan implements wajib melakukan override semua method pada super class.

Abstrac class, class yang berupa gambaran umum dan tidak dapat dibuat object secara langsung. Dapat menurunkan properti dan methodnya, dengan melakukan extends. Tidak perlu meng override semua methodnya.

Polymorpishm, memungkinkan objek dari class yang berbeda digunakan seperti superclass.

Generics adalah fitur yang memungkinkan untuk mengerjakan dengan berbagai tipe data yang berbeda.

Enkapsulasi, mengatur akses dari atribut suatu class. ada 3 buah akses :

1. Public (default)
2. Private
3. Protected
