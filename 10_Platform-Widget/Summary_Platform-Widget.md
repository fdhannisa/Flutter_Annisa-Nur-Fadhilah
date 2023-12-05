Material App adalah widget dasar yang mengemas seluruh widget dalam aplikasi,widget yang digunakan pada sistem Android. Diimport dari package:flutter/material.dart

Struktur:
MaterialApp(
theme: ThemeData.dark(), // Mengatur tema aplikasi
home: const HomePage() //Halaman Utama, saat aplikasi dibuka akan langsung ke halaman HomePage, karena ada widget HomePage()
)

Mengatur halaman juga dapat dilakukan dengan menggunakan routes dan initial route.
MaterialApp(
theme: ThemeData.dark(), //mengatur tema aplikasi
initialRoute: 'home', //routes
routes:{
'home': (\_) => const HomePage(), //mendaftarkan halaman pada routes
},
);

alur: daftarkan seluruh halaman yang ingin dibuka pada properti routes, properti routes menerima sebuah map, yang "key"nya dapat digunakan pada initial routes. Sehingga materialApp akan membaca initial routes, dan akan mencari isi dari inital routes tersebut di dalam properti routes.

Scaffold adalah widget dasar untuk membangun sebuah halaman pada MaterialApp. Membentuk sebuah halaman yang ditulis melalui properti-properti (Scaffold, drawer, bootomNavigation)
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

CupertinoPageScaffold, membangun sebuah halaman pada CupertinoApp. Membentuk sebuah halaman yang ditulis melalui properti properti.

CupertinoPageScaffold(
navigationBar: CupertinoNavigationBar(), //Bar menu bagian atas halaman, jika di materialApp = AppBar.
child:..., //Bagian utama halaman atau bisa disebut isi halaman, jika di MaterialApp = body.
)
