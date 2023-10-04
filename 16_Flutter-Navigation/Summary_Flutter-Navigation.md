Navigation adalah, bagaimana halaman satu dapat berpindah ke halaman lain.

Kita dapat mengubah perpindahan halaman menggunakan Navigator.push(), untuk bergerak kehalaman selanjutnya. Sedangkan Navigator.pop() untuk bergerak ke halaman sebelumnya.

ex. body: Center(
child: ElevatedButton(
onPressed: () {
Navigator.of(context).push(MaterialPageRoute(builder: (\_) => const AboutScreen()));
},
child: const Text('go to'),
)
)

kita dapat mengirim data ke halaman selanjutnya dengan menggunakan parameter.
ex.

//file home_screen
body: Center(
child: ElevatedButton(
onPressed: () {
Navigator.of(context).push(MaterialPageRoute(builder: (\_) => const AboutScreen(
parameter: 'Hore';
)));
},
child: const Text('go to'),
)
)

//file about_screen
class AboutScreen extands StatelessWidget {
final String parameter:
const AboutScreen({Key? key, required this.parameter}) : super(key: key);

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: const Text('About Screen')
            ),
            body: Column(
                children: [
                    Text(parameter),
                   ElevatedButton(  //kembali ke halaman sebelumnya.
                        onPressed: () {
                            Navigator.pop(context);
                        },
                        child: const Text('Back'),
                    )
                ]
            )
        )
    }

}

Navigation dengan NamedRoutes
Daftarkan terlebih dahulu routenyan pada material app,
MaterialApp(
initialRoute: '/',

routes: {
'/': (\_) => const HomeScreen(),
'/about': => const AboutScreen(),
},
)

Cara berpindah halaman dengan routes:

// file about\*screen
Widget build(BuildContext context){
return MaterialApp(
title: 'Flutter Navigation',
initialRoute: '/',
routes:{
'/': (_) => const HomeScreen(),
'/about' : (_) => const AboutScreen(),
}
)
}

// file home_screen
body: Center(
child: ElevatedButton(
onPressed: () {
Navigator.of(context).pushNamed('/about');  
},
child: const Text('go to'),
)
)
