Dart adalah bahasa pemrograman yang dirancang untuk membuat aplikasi agar dapat berjalan dengan cepat. Dart dikembangkan oleh google dan dikenalkan pada tahun 2011.

Kenapa harus menggunakan dart :

1. Menjamin konsistensi tipe data.
2. Null safety, memberi keamanan dari data bernilai null.
3. Hadir dengan banyak dukungan library internal.
4. Multiplatform.

Dasar Pemrograman Dart :

1. Fungsi Main : top level function, yang dijalankan pertama kali. Memiliki tipe data void atau int. Memiliki nama "main".
   ex. void main(){
   print('Hello World')
   }
   output berupa kalimat Hello World yang muncul di terminal.

2. Komentar adalah baris kode yang tidak dijalankan dengan tujuan:
   a. Memberi catatan pada kode (penjelasan kode)
   b. Mencegah perintah dijalankan.
   Cara menulis komentar:
   a. menambagkan garis miring sebanyak dua kali (//)
   b. jika baris yang ingin di beri kometar cukup banyak dapat menggunakan (/_ kalimat yang ingin ditulis _/)
   ex. void main(){
   // akan mengeluarkan output kalimat Hello World
   print('Hello World')
   }

3. Variabel digunakan untuk menyimpan data atau value. Memiliki nama dan juga tipe data.
   Deklarasi Variabel :
   int score;
   int = tipe data
   score = nama variabel
   value = null

ex. void main(){
var usia;
usia = 18; atau dapat ditulis menjadi
var usia = 18;
print(usia);
}
output yang dihasilkan adalah 18.

4. Konstanta digunakan untuk menyimpan data, memiliki nama dan tipe data, dan bernilai tetap. Menggunakan keyword "final".
   ex. void main(){
   final usia = 18;
   usia = 25; //mencoba mengganti value usia menjadi 25.  
    print (usia);
   } akan menunjukan error

5. Tipe data :
   a. int, dapat digunakan untuk menggantikan var
   ex.
   void main(){
   int usia = 18;
   }
   b. bool bernilai true or false
   void main(){
   bool perempuan = true;
   }
   c. String penulisan menggunakan teks yang diawali dan diakhiri tanda kutip.
   void main(){
   String nama = 'Alex';
   }
   d. double penulisan menggunakan bilangan pecahan atau harus menggunakan titil.
   void main(){
   double phi = 3.14;
   }

6. Operator digunakan untuk operasi pengolahan data. Data yang dikelola disebut operand.
   a. Operator aritmatika, untuk perhitungan matematika.
   ex.
   void main(){
   print (1+2);
   }
   b. Operator assignment, untuk memberi nilai pada variabel.
   ex. penulisan menggunakan bilangan pecahan atau koma.
   void main(){
   var usia = 18;
   usia = 19
   }
   c. Operator comparison, membandingkan kesetaraan nilai.
   ex.
   void main(){
   print (1==2);
   }
   d. Operator logical, menggabungkan beberapa kondisi.
   ex.
   void main(){
   print (1==2 && 2==1);
   }
