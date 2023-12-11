Open AI adalah sebuah library yang dapat digunakan untuk memanfaatkan teknologi AI yang diselenggarakan oleh Open AI.
Library ini nantinya dapat diintegrasikan dengan berbagai aplikasi seperti API, web, dan mobile.

Keuntungan menggunakan Open AI

1. Free
2. Mudah dipasang
3. Dapat digunakan di berbagai perangkat
4. Jumlah parameter yang banyak (175 Miliar)

Menggunakan AI pada prject kita
untuk menggunakan Ai pada aplikasi kita, tentunya kita harus mendapatkan api keys. Caranya membuat secret key yang baru pada web Open AI. api key hanya dapat di copy satu kali.

1. Install package yang dibutuhkan (
   http = untuk mengirim request api,
   intl = formating mata uang, //karena projectnya menggunakan mata uang rupiah
   envied = menyimpan api key, disimpan pada file.env)
2. Buat file .env untuk meyimpan api key, lalu ke file gitignore tambahkan .env dan env.g.dart
   //pada file .env
   OPEN_API_KEY="";
3. Buat folder baru di dalam folder lib, namanya env. Di dalam folder env buat file dengan nama env.dart

Cara membuat data model untuk respons api dari OPEN AI menggunakan postman

1. membuat collection baru di postman.
2. membuat request baru, untuk namanya bebas.
3. membuat request body menggunakan json, masukan atribut seperti
   ex {"model": "text-davinci-003",
   "prompt": "you are a smartphone expert. Give me a smarthphone recomendations with budget equals IDR 15,000,000",
   "temoeratur":0.4,
   "max_tokens":64,
   "top_p":1,
   "frequency_penalty":0,
   "presence_penalty":0,}
4. gunakan method http request dan masukan endpointnya (https://api.openai.com/v1/completions)
5. sebelum melakukan request kita harus memasukan apikey yang kita miliki di bagian collection/authorization/
   simpan api keynya dengan memasukan nilai dari apikey, dengan tyoe baere token.
6. send request.
