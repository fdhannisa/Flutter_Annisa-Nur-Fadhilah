import 'package:assets/DetailPict.dart';
import 'package:assets/ListKontak.dart';
import 'package:assets/kontak.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(title: const Text('Flutter Asset'),
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
      body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing:10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: (){
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          )
                        ),
                      context: context, builder: (context) => DetailPict(),
                    );
                  },
                  child: Image.asset('assets_folder/params.png'),
                )
            ),
            Container(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: (){
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          )
                      ),
                      context: context, builder: (context) => DetailPict(),
                    );
                  },
                  child: Image.asset('assets_folder/params.png'),
                )
            ),
            Container(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: (){
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          )
                      ),
                      context: context, builder: (context) => DetailPict(),
                    );
                  },
                  child: Image.asset('assets_folder/params.png'),
                )
            ),
            Container(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: (){
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          )
                      ),
                      context: context, builder: (context) => DetailPict(),
                    );
                  },
                  child: Image.asset('assets_folder/params.png'),
                )
            ),
            Container(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: (){
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          )
                      ),
                      context: context, builder: (context) => DetailPict(),
                    );
                  },
                  child: Image.asset('assets_folder/params.png'),
                )
            ),
            Container(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: (){
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          )
                      ),
                      context: context, builder: (context) => DetailPict(),
                    );
                  },
                  child: Image.asset('assets_folder/params.png'),
                )
            ),
          ],
      )
    );

  }
}



