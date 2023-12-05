1.  Pengambilan Keputusan :
    Menentukan alur perogram dalam kondisi tertentu.
    a. If : memerlukan tipe data boolean, menjalankan bagian proses jika nilai bool bernilai true.
    void main(){
    var usia = 18;
    if (usia < 20){ //jika usia kurang dari 20, maka output akan menampilkan remaja.
    print('Remaja');
    }
    }

    b.If - Else : menambah alternatif pilihan.
    Baris kode else dijalankan jka nilai bool adalah false.
    void main(){
    var usia = 18;
    if (usia < 20){ //jika usia kurang dari 20, maka output akan menampilkan remaja.
    print('Remaja');
    }
    else(){ //jika usia lebih dari 20, maka output akan menampilkan tidak ada golongan.
    print('Tidak ada golongan');
    }
    }

    c. Else - if : menambah pengujian nilai bool lain.
    void main(){
    var usia = 18;
    if (usia < 20){ //jika usia kurang dari 20, maka output akan menampilkan remaja.
    print('Remaja');
    } else if(usia < 40){ //jika usia kurang dari 40, maka output akan menampilkan dewas
    print('Dewasa')
    }
    else(){ //jika usia lebih dari 20, maka output akan menampilkan tidak ada golongan.
    print('Tidak ada golongan');
    }
    }

2.  Perulangan
    a. for, diketahui berapa kali perulangan terjadi, memiliki nilai awal, memerlukan nilai bool (jika true maka program akan dijalankan), memiliki pengubah nilai.
    void main(){
    for(var i = 0; i < 10; i += 1;){  
     print(i);
    }
    }

    alur:

    1. i = 0 adalah nilai awal
    2. i akan dicek nilainya, apakah <10
    3. jika bernilai true, maka i akan ditambahkan dengan 1, lalu di cek kembali apakah hasilnya masih <10,
    4. jika kondisinya masih true, maka perulangan akan berlanjut hingga menemukan kondisi yang salah.

    b. while, tidak diketahui berapa kali perulangan terjadi. Memerlukan nilai bool, jika true maka perulangan dilanjutkan.
    void main(){
    var i = 0;
    while(i < 10){ //nilai bool
    print(i);
    i++; //menampilkan nilai i tiap perulangan terjadi
    }
    }

    alur:

    1. nilai awal dimulai dari 0
    2. dicek apakah i < 0, jika benar maka program akan berlanjut, hingga menemukan kondisi yang salah.

    c. do - while, mengubah bentuk while. Proses yang dijalankan minimal satu kali, akan diteruskan jika nilai bool adalah true.
    ex. void main(){
    var i = 0; //jika var i = 100, maka program akan tetap dijalankan satu kali dengan menghasilkan output 100. Lalu program akan berhenti, karena tidak memenuhi kondisi i < 10
    do{
    print (i);
    i++;
    } while (i < 10);
    }

    alur:

    1. program akan dijalan terlebih dahulu dengan nilai awal 0
    2. 0 akan ditambahkan dengan 1, karena terdapat increment
    3. lalu akan dicek apakah memenuhi kondisi i < 10, jika memenuhi maka akan berlanjut. Jika kondisi salah maka program akan berhenti.

3.  Break and continue :
    a. Break, menghentikan proses perulangan walaupun masih dalam kondisi true.
    ex.
    void main() {
    for(var i = 0; true; i++){
    if (i == 10){ // program akan dihentikan jika nilai i == 10
    break;
    }
    print(i);
    }
    }

    Continue, menghentikan satu kali proses pengulangan, lalu melanjutkan ke proses selanjutnya.
    ex.
    void main() {
    for(var i = 0; i < 10; i++){
    if (i == 5){ // program akan dihentikan jika nilai i == 5. Jadi pada hasil output index ke 5 tidak akan muncul karena tidak dieksekusi.
    break;
    }
    print(i);
    }
    }

4.  Function, kumpulan perintah, dapat digunakan berkali-kali, kita dapat mengubah fungsi sekali, penggunaan lainnya akan ikut berubah.
    //function halo
    void halo(){
    print('Halo');
    }

    //function main
    void main(){
    halo(); //memanggil function halo.
    }

5.  Function dengan parameter, mengirim data saat menjalankan fungsi.
    //function tampil
    void tampil(String teks){
    print(teks);
    }

    //function main
    void main(){
    tampil('Halo'); //memanggil function tampil dengan mengirimkan data yang beriri teks Halo. Outpunta berupa tampilan teks Halo
    }

6.  Function dengan return, memberi nilai pda fungsi saat di panggil.
    //function penjumlahan
    int jumlah(int a, int b){
    return a + b;
    }

    //function main
    void main(){
    var hasil = jumlah(1, 2); //menampung nilai kembali dari function jumlah
    print(hasil);
    }
