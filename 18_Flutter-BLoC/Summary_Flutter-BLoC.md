BLoC adalah business Logic Component. Memisahkan antara business logic dengan UI. BLoC meghubungkan UI dengann data.

Kenapa menggunakan BLoC, karena lebih simple (mudah digunakan), powerful (mempercepat proses tertentu), testable (mudah dilakukan pengujian).

Cara kerja BLoC,

1. Menerima event sebagai input
2. Dianalisa dan dikelola di dalam BLoC
3. Menghasilkan state sebagai output

Di dalam BLoC terdapat stream, yaitu rangkain proses secara asynchronous. Serta menjadi actor utama didalam BLoC. Ketika menggunakan BLoC, artinya kita memanfaatkan stream untuk menjalankan beberapa proses.

Cara menggunakan BLoC:

1.  Install package,
    ex. dependencies:
    flutter_bloc: ^8.0.1 //agar dapat menggunakan kode BLoC
    equatable: ^2.0.3 //Mencegah rebuilds yang tidak dibutuhkan

2.  Membuat Folder BLoC: counter_bloc.dart, counter_event.dart, dan counter_state.dart ataubuat dengan extensions di code editor.

3.  Menambahkan event,
    // file counter_event.dart
    abstract class CounterEvent extands Equatable{
    const CounterEvent();

    @override
    List<Object> get props => [];
    }
    class Increment extends CounterEvent {}

    class Decrement extends CounterEvent {}

4.  Menambahkan State,
    // file counter_state.dart untuk menyimpan nilai counter
    class CounterState extends Equatable {
    int value = 0;
    CounterState(this.value);

        @override
        List<Object> get props => [value];

    }

5.  Menambah Logika Bisnis
    // file counter_bloc.dart, gunakan fungsi emit untuk mengirim state terbaru.
    class CounterBloc extends Bloc extends Bloc<CounterEvent, CounterState> {
    CounterBloc() : super(CounterState(0)){
    on<Increment>((event, emit) => (CounterState(state.value + 1)));
    on<Increment>((event, emit) => (CounterState(state.value - 1)));
    }
    }

6.  Menambahkan Bloc Provider
    // filr main.dart
    Widget build(BuildContext context){
    return BlocProvider<CounterBloc>(
    create: (context) => CounterBloc(),
    child: MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
    primarySwatch: Colors.orange,
    ),
    home: const HomePage(),
    ),
    );
    }
