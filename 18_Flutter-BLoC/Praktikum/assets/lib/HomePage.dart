import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'DetailPict.dart';
import 'ListKontak.dart';
import 'home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => homeBloc,
      child: _HomePageContent(),
    );
  }
}

class _HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text('Flutter Asset'),
        backgroundColor: Colors.orange,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Contact'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListKontak()),
                );
              },
            ),
            ListTile(
              title: const Text('Pictures'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ],
        ),
      ),
      body: BlocBuilder<HomeBloc, String>(
        builder: (context, selectedImage) {
          return GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: List.generate(
              6,
                  (index) => Container(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    context.read<HomeBloc>().selectImage('assets_folder/params.png');
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      context: context,
                      builder: (context) => DetailPict(),
                    );
                  },
                  child: Image.asset(selectedImage),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}



