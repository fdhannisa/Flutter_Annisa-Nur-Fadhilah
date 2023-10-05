State adalah data atau informasi yang dapat dibaca saat pembuatan widget. State dapat berubah saat widget sedang aktif, dan hanya dapat dimiliki oleh StatefulWidget.

kita dapat mengubah state menggunakan setState();
ex.
ElevatedButton(
onPressed: (){
setState(() {
number++; //perubahan yang diinginkan adalah variable number akan terus bertambah jumlahnya jika ditekan  
 });
},
)

Global State adalah state yang dapat digunakan seluruh aplikasi. Kita membutuhkan global state agar dapat memanfaatkan state yang sama dengan mudah.

Cara instal provider:
menambahkan package provider di bagian dependencies dalam file pubspec.yaml

// file model.dart
class GetContact{
String name = '';
String phoneNumber = '';

    GetContact({
        required this.name,
        required this.phoneNumber,
    });

}
