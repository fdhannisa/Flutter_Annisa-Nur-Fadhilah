Material App adalah widget dasar yang mengemas seluruh widget dalam aplikasi,widget yang digunakan pada sistem Android. Diimport dari package:flutter/material.dart

Struktur:
Widget yang pertama kali dibuka, diletakan pada bagian home.
MaterialApp(
theme: ThemeData.dark(), // Mengatur tema aplikasi
home: const HomePage //Halaman Utama
)

Mengatur halaman juga dapat dilakukan dengan menggunakan routes dan initial route.
MaterialApp(
theme: ThemeData.dark(),
initialRoute: 'home',
routes:{
'home': (\_) => const HomePage(),
},
);

Scaffold adalah widget dasar untuk membangun sebuah halaman pada MaterialApp.
Struktur:
Scaffold(
appBar: AppBar(...), //Bar menu bagian atas
drawer: Drawer(...), //Menu bagian samping halaman
body: ..., //Bagian utama halaman
bottomNavigation: BottomNavigationBar(...), //Menu bagian bawah halaman
):

Cupertino APP adalah widget dasar yang mengemas seluruh widget dalam aplikasi. Widget yang digunakan pada sistem iOS. Diimport dari package:flutter/cupertino.dart

Struktur:
final \_themeDark = const CupertinoThemeData.raw( // variabel \_themeDark dibuat untuk menyimpan tema, karena tidak bisa menggunakan ThemeData.dark() seperti materialApp.
Brightness.dark,
null,
null
);

Widget yang pertama kali dibuka, diletakan pada bagian home.
CupertinoApp(
theme: \_themeDark, //Mengatur tema apliksi
home: const HomePage(), //Halaman utama
);
