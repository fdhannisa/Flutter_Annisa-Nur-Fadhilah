Layout berguna untuk mengatur tata letak, layout berbentuk widget yang mengatur widget di dalamnya.

Ada beberapa widget yang digunakan untuk mengatur layout dalam Flutter:

1. Single Child Layout: Hanya dapat membuat 1 widget didalamnya.
   a. Container, membuat tampilan seperti box, membungkus widget lain, box memiliki margin, padding, dan border.
   ex. Container(
   margin: const EdgeInsets.all(10), //mengatur jarak container dengan bagian luar container  
    padding: const EdgeInsets.all(10), //mengatur jarak antara child dengan containernya (jarak isi dengan border container)
   decoration: BoxDecoration( //menambahkan style border
   border: Border.all(),  
    ),
   child: Text("hallo"), //tempat menaruh widget lain di dalam container.  
    )

   b. Center, membuat sebuah box, membungkus widget lain, memenuhi lebar dan tinggi ruang di luarnya, meletakan widget berada di bagian tengah.
   ex. Center(
   child: Text('Halo')
   )

   c. SizedBox, membuat sebuah box, membungkus widget lain, box dapat diatur lebar dan tingginya, lebih sederhana dari container.
   ex. SizedBox(
   width: 100,
   height: 150,
   child: Text('Halo')
   )

2. Multi Child Layout:
   a. Column and Row, adalah widget yang digunakan untuk mengatur komponen secara horizontal (row) dan vertikal (column).
   Column(
   children:
   Container(
   margin: const EdgeInsets.all(10),
   padding: const EdgeInsests.all(10),
   child: const Text('H'),
   decoration: BoxDecoration(
   border: Border.all()
   )
   ),

   Container(
   margin: const EdgeInsets.all(10),
   padding: const EdgeInsests.all(10),
   child: const Text('A'),
   decoration: BoxDecoration(
   border: Border.all()
   )
   )
   );

   Row(
   children:
   Container(
   margin: const EdgeInsets.all(10),
   padding: const EdgeInsests.all(10),
   child: const Text('H'),
   decoration: BoxDecoration(
   border: Border.all()
   )
   ),

   Container(
   margin: const EdgeInsets.all(10),
   padding: const EdgeInsests.all(10),
   child: const Text('A'),
   decoration: BoxDecoration(
   border: Border.all()
   )
   )
   );

   ListView: 'ListView' adalah widget yang digunakan untuk mengatur daftar scrollable dari widget. Sangat berguna untuk mengatasi elemen yang panjang.
   ex. Widget build(BuildContext context){
   return ListView(
   children: [
   Container(
   margin: const EdgeInsets.all(10),
   padding: const EdgeInsests.all(10),
   child: const Text('H'),
   decoration: BoxDecoration(
   border: Border.all()
   )
   ),

   Container(
   margin: const EdgeInsets.all(10),
   padding: const EdgeInsests.all(10),
   child: const Text('A'),
   decoration: BoxDecoration(
   border: Border.all()
   )
   ),

   ]
   )
   }

   GridView: digunakan untuk mengatur elemen dalam bentuk grid
   GridView.count(
   crossAxisCount: 2, //menentukan jumlah gridnya, jika 2 maka akan ada 2 kolom ke samping
   children: [
   Container(
   margin: const EdgeInsets.all(10),
   padding: const EdgeInsests.all(10),
   child: const Text('H'),
   decoration: BoxDecoration(
   border: Border.all()
   )
   ),

   Container(
   margin: const EdgeInsets.all(10),
   padding: const EdgeInsests.all(10),
   child: const Text('H'),
   decoration: BoxDecoration(
   border: Border.all()
   )
   )

   ]
   );
