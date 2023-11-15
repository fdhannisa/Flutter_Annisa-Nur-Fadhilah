Open AI adalah sebuah library yang dapat digunakan untuk memanfaatkan teknologi AI yang diselenggarakan oleh Open AI.
Library ini nantinya dapat diintegrasikan dengan berbagai aplikasi seperti API, web, dan mobile.

Keuntungan menggunakan Open AI

1. Free
2. Mudah dipasang
3. Dapat digunakan di berbagai perangkat
4. Jumlah parameter yang banyak (175 Miliar)

Menggunakan AI pada prject kita

1. Install package yang dibutuhkan (
   http = untuk mengirim request api,
   intl = formating mata uang, //karena projectnya menggunakan mata uang rupiah
   envied = menyimpan api key, disimpan pada file.env)
2. Buat file .env untuk meyimpan api key, lalu ke file gitignore tambahkan .env dan env.g.dart
   //pada file .env
   OPEN_API_KEY="";
3. Buat folder baru di dalam folder lib, namanya env. Di dalam folder env buat file dengan nama env.dart
