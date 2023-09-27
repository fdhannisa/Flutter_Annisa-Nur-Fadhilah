Layout adalah cara mengatur tampilan atau komponen-komponen UI di dalam widget. Layout memungkinkan untuk menentukan bagaiman widget akan diatur.

Ada beberapa widget yang digunakan untuk mengatur layout dalam Flutter:

1. Single Child Layout:
   a. Container, digunakan untuk mengatur tata letak dan tampilan widget-child di dalamnya. Dapat mengatur properti seperti alignment, margin, padding, dll.
2. Multi Child Layout:
   a. Column and Row, adalah widget yang digunakan untuk mengatur komponen secara horizontal (row) dan vertikal (column).
   Column(
   children: const[
   Text(teks),
   Text(teks)
   ],
   );

   Row(
   children: const[
   Text(teks),
   Text(teks),
   ],
   );

   ListView: 'ListView' adalah widget yang digunakan untuk mengatur daftar scrollable dari widget. Sangat berguna untuk mengatasi elemen yang panjang.

   GridView: digunakan untuk mengatur elemen dalam bentuk grid
   GridView.count(
   crossAxisCount: angka,
   children: []
   );
