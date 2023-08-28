Function (Lanjutan)

1. Anonymus Function:
   var hello = (){
   print('Hello');
   };

var jumlah = (int a, int b){
return a + b;
}

void main(){
hello();
print(jumlah(1,2));
}

2.  Arrow Function
    var hello = () => print('Hello');
    var jumlah = (int a, int b) => return a + b;

void main(){
hello();
print(jumlah(1, 2));
}

3. Async - Await
   void P1(){
   Future.delayed(Duration(seconds: 1), (){
   print('Hello dari P1');
   });
   }

void P2(){
print('Hello dari P2');
}

void main(){
P1(); // dijalankan terakhir karena ada durasi 1 detik
P2(); //
}

proses Asynchronus dapat dijadikan syncronus (program dijalankan dari atas ke bawah) dengan mengcompare future dengan menggabungkan future dan async-wait.
ex.
Future<void> P1() async {
await Future.delayed(Duration(seconds: 1), (){
print('Hello dari P1');
});
}

void P2(){
print('Hello dari P2');
}

void main() asycn{ // fungsi main menjadi async karena memiliki await didalam fungsinya.
await P1();
P2(); // P2 akan dijalankan setelah P1 berhasil dijalankan
}

Tipe data Future, dengan tipe data ini kita dapat membuat suatu fungsi berjalan sesuai dengan durasi yang sudah di tetepakan. Future berjalan secara asyncrhonus.
ex.
Future<String> P1(){
return Future.delayed(Duration(seconds: 1), (){
return'Hello dari P1;
});
}

void main() async{
var data = await P1();
print(data);
}

Colection, struktur data yang lebih canggih untuk menangani masalah yang lebih kompleks. Collection biswa menyimpan kumpulan data atau nilai dalam satu tempat.

1.  List, menyimpan data secara baris
    void main() async{
    var scores = [];
    scores.add(60);
    scores.add(80);
    scores.add(90);
    print(scores); // output berupa [60, 80, 90]

    print(scores[0]); // output berupa 60
    print(scores[1]); // 80
    }

    void main() async {
    var scores = [60, 80, 90];
    print(scores);

        for(var score in scores){
            print(score);           //mengambil seluruh data pada list
        }

    }

Maping, menyimpan data denga key-value.
ex.
void main() async {
var student = {};
student['name'] = 'Alex';
student['age'] = 16;
print(student); //outputnya {name: Alex, age: 16}

    print(student['name']);     //outputnya Alex
    print(student['age']);      //outputnya 16

}

void main() async {
var students = {
'name' : 'Alex';
'age' : 16;
};
print(Student);

    for(var key in students.keys){      //mengambil seluruh data pada list
        print(students[key]);
    }

}
