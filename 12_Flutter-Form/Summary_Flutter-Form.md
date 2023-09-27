Form adalah komponen yang digunkaan untuk mengumpulkan data dari pengguna. Data yang diisikan dapat berjumlah 1 atau bahkan lebih.

Format input pada form dapat berupa:

1. Text Field, menerima isian data dari pengguna , isiannya dapat lebih dari satu.
   ex. var inputController = TextEditingController();
   TextField(
   controller: inputController,
   )

2. Radio, memberi opsi pada pengguna
   ex. var radioValue = '';
   Radio<String>(
   value: 'Laki-laki',
   groupValue: radioValue,
   onChanged: (String? value){
   setState((){
   radioValue = value ?? '';
   });
   },
   );

3. Checkbox, Memberi opsi pada pengguna serta dapat memilih beberapa opsi.
   ex. var checkValue = false;
   Checkbox(
   value: checkValue,
   onChanged: (bool? value){
   setState((){
   checkValue = value ?? false;
   });
   },
   );

4. Dropdown Button, Memberi opsi pada pengguna, hanya dapat memilih satu opsi. Opsi tidak ditampilkan di awal, hanya tampil jika ditekan.
   ex. var dropdownValue = 0;
   DropdownButton(
   value: dropdownValue,
   onChanged: (int? value){
   setState((){
   dropdownValue = value ?? 0;
   });
   },
   items: const [
   DropdownMenuItem(
   value: 0,
   child: Text('Pilih...'),
   ),
   DropdownMenuItem(
   value: 0,
   child: Text('Satu'),
   ),
   ]
   )

5. Button
   a. ElevatedButton digunakan dalam Flutter untuk membuat tombol dengan efek tampilan yang naik (elevated). Tombol ini biasanya digunakan untuk tindakan yang lebih penting atau menonjol dalam antarmuka.
   ElevatedButton(
   child: const Text ('Submit'),
   onPressed: (){

   },
   );

   b. IconButton, digunakan untuk membuat tombol dengan ikon. Ini sangat berguna ketika ingin menambahkan tindakan pada ikon tertentu.
   IconButton(
   icon: const Icon(Icon.add),
   onPressed: (){

   },
   );
