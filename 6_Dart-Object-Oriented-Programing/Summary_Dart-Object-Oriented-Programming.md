OOP adalah paradigma pemrograman yang berkonsep object. Kit adapat memvisualisasikan object didunia kita kedalam program yang kita buat.
ex. jika dalam sebuah game terdapat berbagai macam hero dan pergerakan yang dapat dilakuakn, kita dapat menggunakan oop untuk membuat hero serta pergerakan tersebut. Kita hanya perlu membuat satu buah method yang dapat digunakan berulang kali oleh object yang berbeda.

Keuntungan OOP adalah, kita dapat mengetahui dengan mudah letak masalah pada codingan kita. Kita juga dapat menggunakan berulang kali mathod yang sudah kita buat.

OOP dapat digunakan pada bahasa C++, java, javascript, python, dll.
Komponen OOP :

1. class, gambaran atau bluerpint suatu object. Memiliki properti serta memiliki sifat atau kemampuan yang disebut method.
   ex.
   class Hewan{
   //property
   //method
   }

2. object, kita dapat membuat object di dalam class dengan membuat setau variable
   ex.
   void main(){
   var h1 = Hewan();
   var h2 = Hewan();
   var h3 = Hewan();
   }
3. property, ciri - ciri suatu class. Harus diletakan di dalam class, dan diawali dengan tipe data.
   ex.
   class Hewan{
   var mata = 2;
   var kaki = 2;
   }

   mengakses properti dapat menggunakan object
   ex.
   vodi main(){
   var h1 = Hewan(); //membuat object baru berupa h1,
   print(h1.mata) //lalu memanggil property yang ada pada class Hewan.
   }

4. method, sifat atau prilaku suatu class, atau aktivitas yang dapat dilakukan suatu class.
   ex.
   class Hewan{
   void bersuara(){
   print("meong");
   }
   }

cara memanggilanya:
void main(){
var h1 = Hewan();
h1.bersuara();
} 5. inheritence 6. generics
