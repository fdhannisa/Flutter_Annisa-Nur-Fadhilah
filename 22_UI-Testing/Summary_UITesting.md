Testing adalah proses yang penting dalam pebuatan aplikasi, karena pada proses ini kita dapat mengetahui bug yang ada pada aplikasi yang dibuat. Pengujian pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna.

UI testing di Flutter dikenal dengan widget testing, pengujian dilakukan dengan menuliskan script yang dapat dijalankan secara otomatis.

Keuntungan UI testing:

1. Memastikan seluruh widget memberi tampilan yang sesuai
2. Memastikan seluruh interaksi dapat diterima dengan baik
3. Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget

Melakukan UI testing:

1.  Instalasi Package, biasanya sudah terpasang sejak project pertama kali dibuat.
    flutter_test:
    sdk: flutter
2.  Penulisan Script Testing, dilakukan pada folder test. Nama file harus ditulis \_test.dart (ex. contact.dart). Tiap file berisi fungsi main() yang berisi script testing.
    ex.
    void main(){
    testWidgets('Judul halaman harus...', (WidgetTester tester) async{
    await tester.pumpWidget(
    const MaterialApp(
    home: AboutScreen(),
    )
    );
    expect(find.text('About Screen'), findsOneWidget);
    });

        testWidget('Tombol harus...', (WidgetTester tester) async{
        //..
        })
        }

    jika scriptnya sudah ditulis, script tersebut dapat dijalankan dengan menulis flutter test pada terminal.
