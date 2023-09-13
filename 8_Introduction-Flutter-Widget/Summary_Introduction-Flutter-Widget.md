Flutter adalah alat antarmuka pengguna yang digunakan untuk membuat aplikasi mobile, desktop, dan web.

Keunggulan Flutter :

1. Mudah digunakan dan dipelajari.
2. Produktivitas tinggi.
3. Dokumentasi lengkap.
4. Komunitas yang berkembang.

Bagian dari flutter :

1. Software Development Kit (SDK)
   Alat-alat untuk membantu proses pengembangan aplikasi.
2. Framework
   Perlengkapan untuk membantuk apliksi yang dapat dikustomisasi.

Syntax :

1. Membuat project => flutter create <nama_project>
   ex. flutter create todolist

2. Menjalankan project => flutter run
   (pastikan kita sudah berada pada direktori project)

Struktur Direktori:
Direktori platform : android, ios, web
direktori project : lib (ruang kerja utama), test (altivitas pengujian)

Widget, digunakan untuk membentuk UI, berupa class, dapat terdiri dari beberpa widget.

Jenis widget :

1.  Stateless widget => tidak bergantung pada perubahan data, hanya terfokus pada tampailan, dibuat dengan extands pada class StatelessWidget.
    Cara membuat :
    class MyWidget extends StatelessWidget {
    const MyWidget({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context){
    return const MaterialApp(
    home: Scaffold(
    body: Text('Selamat data'),
    ),
    );
    }  
     }

2.  Stateful Widget => mementingkan pada perubahan data, dibuat dengan extands pada class StatefulWidget. 1 widget menggunakan 2 class (widget dan state).
    Cara membuat :
    class MyWidget extends StatefulWidget {
    const MyWidget({Key? key}) : super(key: key);

        @override
        createState() => MyWidgetState();

    }

    class MyWidgetState extends State<MyWidget> {
    @override
    Widget build(BuildContext context){
    return const MaterialApp(
    home: Scaffold(
    body: Text('Selamat datang'),
    ),
    );
    }
    }

3.  Built in Widget,widget yang dapat digunakan langsung, sudah terinstall bersama flutter.
    a. MaterialApp => Membangun aplikasi dengan desain material.
    b. Scaffold => Membentuk sebuah halaman.
    c. AppBar => membentuk aplication bar yang terletak pada bagian atas halaman.
    d. Text => menampilkan teks.
