get: menampilkan data
post: manambahkan data
pull: mengirim data
delete: hapus data

rest api, menerima request dari client, lalu meneruskanny ake server.
server, tempat terjadinya bisnis logic.
ex. client meminta method get (untuk menampilkan data) user, di server akan muncul logic yang berusaha untuk menampilkan data yang diminta client. Lalu server memberikan response ke Rest API dengan bentuk JSON.

HTTP, protokol yang digunakan untuk berkirim data pada internet. Biasanya menggunakan media web.
Pola Komunikasinya :
client mengirimkan request, lalu server mengelola dan membalas dengan memberi respons.

Struktur Request:

1. URL atau end point, alamat yang akan diakses client.
2. Method (get, post, put, delete), menunjukan aksi yang diinginkan.
3. Header, informasi tambahan terkait request yang dikirimkan.
4. Body, data yang disertakan bersama request.

Strukter Respons (respons yang dihasilkan server):

1. Status Code, kode yang mewakili keseruhan

Dio, package sebagai protokol. Dapat di temukan pada flutter, react, laravel.
Dimanfaatkan sebagai rest API.

JSON, mengubah struktur data menjadi bentuk JSON. Digunakan ketika kit amengirimkan data ke server (method post).
