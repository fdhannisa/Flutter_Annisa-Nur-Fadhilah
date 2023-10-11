Model-View ViewModel memisahkan logic dengan tampilan (view) ke dalam View Model.

Keuntungan menggunakan MVVM:

1. Reusability, jika beberapa tampilan memerlukan logic yang sama, maka dapat menggunakan ViewModel yang sama.
2. Maintainability, mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic.
3. Testability, pengujian menjadi terpisah antara pengujian tampilan dan pengujian logic. Sehingga dapat meningkatkan produktivitas pad apnegujian.

Cara melakukan MVVM
Struktur derokteori dibagi menjadi 2, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut

Model adalah bentyk data yang digunakan, dibuat dalam bentuk class. Data - data yang dimuat diletakan pada property.

ViewModel menyimpan data dan logic yang diperlukan halaman ContactScreen. Jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga. Mendaftarkan ViewModel, menggunakan MultiProvider banyak ViewModel. MaterialApp.

View
