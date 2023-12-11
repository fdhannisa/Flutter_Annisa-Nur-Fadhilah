User input adalah interaksi antara aplikasi dan user. Widget tersebut dibuat untuk mengumpulkan input dan feedback dari user.

1. DatePicker, widget untuk user memasukan tanggal.
   Cara membuat date picker:
   a. Menggunakan fungsi bawaan flutter showDatePicker.
   b. Fungsi showDatePicker memiliki tipe data future.
   c. Menampilkan dialog material design date picker.

   ex. final selectDate = await showDatePicker(
   context: context,
   initialDate: CurrentDate,
   fisrtDate: DateTime(1990),
   lastDate: DateTime(currentDate.year+5),
   )

2. ColorPicker, widget untuk user memilih warna. Penggunaan color picker bisa digunakan untuk berbagai macam kondisi.
   Cara membuat color picker:
   a. menggunakan packages flutter_collorpicker pada pubspec.yaml
   b. mempersiapkan variabel Color \_currentColor = Colors.orange;

3. FilePicker, kemampuan widget untuk mengakses storage. Memilih dan membuka file.
   Cara membuat file picker:
   a. Menggunakan packages file_picker dan open_file.
   b. menambahkan packages file_picker dan open_file di pubspec.yaml
   c. import packages file_picker dan open_file di dalam file dart
   d. membangun UI

   e. membangun fungsi untuk megexplore dan memilih file dari storage
   ex. void \_pickFile() async{
   final result = await FilePicker.platform.PickFiles();
   if(result == null) return;
   }

   f. memanggil fungsi \_pickFile didalam onPressed
   ex. Center(
   child : ElevatedButton(
   child: const Text('Pick and Open File'),
   onPressed: (){
   \_pickFile();
   }
   )
   )

   g. Membuat fungsi untuk membuka files yang telah dipilih
   ex. void \_openFile(PlatformFile file){
   OpenFile.open(file.path)
   }

   h. Mengambil file dari object result dan memanggil fungsi \_openFile di dalam fungsi \_pickFile.
   ex. void \_pickFile() async{
   final result = await FilePicker.platform.pickFiles();
   if(result == null) return;

   // Mendapat file dari object result
   final file = result.files.first;
   \_openFile(file);
   }

   i. Ketika button ditekan maka akan membuka storage device dan file yang dipilih akan terbuka.
