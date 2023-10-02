Assets adalah file yang di bundled dan di deployed bersamaan dengan aplikasi. Assets memiliki banyak tipe, seperti static data (json files), icons, image, dan font file (ttf).
Menentukan Assets:Menggunakan pubspec.yaml, lalu mengidentifikasi assets yang dibutuhkan aplikasi.
ex. assets: - assets/my_icon.png - assets/background.jpg

Image, berguna untuk membuat tampilan aplikasi menjadilebih menarik.
Flutter mendukung format gambar jpeg, webp. gif, animated web/gif, dll. Menampilkan gambar dari project asset dan internet.

Loading Images Cara :

1.  Gunakan widget image,
    ex. body: Column(
    children: const [
    Image(
    imaga: AssetImage('assets/]pbackground.jpg'),
    Image(
    image: AssetImage('assets/my_icon.png'),
    )

            )
        ]

    )

2.  Menggunakan method Image.asset
    ex. body: Column(
    children: [
    Image.assets('assets/backgorund.jpg'),
    Image.network('https://picsum.photos/id/1/200/300'),
    ]
    )

Font, penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi. Penentuan font yang mau dipakai biasanya oleh UI designer. Penerapan font menggunakan custom font atau dari package.

1. Custom Font,
   Cari terlebih dahulu font yang diinginkan,
   lalu import file .ttf (Buat folder baru dengan nama fonts, lalu isi dengan file .ttf yang diinginkan)
   daftarkan font di pubspec.yaml
   ex. family: Rowdies
   fonts: - assets: fonts/Rowdies-Bold.ttf - assets: fonts/Rowdies-Light.ttf - assets: fonts/Rowdies-Regular.ttf

Jika ingin menggunakan font sebagai default dapat ditulis seperti berikut:
Widget build (BuildContext context){
return MaterialApp(
title: 'Flutter Assets',
theme: ThemeData(fontFamily: 'Rowdies'),
home: const HomePage(),
)
}

Jika ingin digunakan pada spesifik widget:
Text(
'Star Hill',
style: TextStyle(
fontsize: 30,
fontFamily: 'Rowdies',
),
),

Font dari package:
menambahkan package google_fonts pada dependencies:
dependencies:
flutter:
sdk: flutter
google_fonts: ^2.2.0

import package pada file dart:
import 'pacakage:google_Fonts/google_fonts.dart';

panggil fonts yang diinginkan:
Text(
'Star Hill',
style: GoogleFonts.rowdies(fontSize: 30),
),
