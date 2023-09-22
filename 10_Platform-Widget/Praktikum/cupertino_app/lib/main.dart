import 'package:flutter/cupertino.dart';



void main() {
  runApp(const Widget049());
}

class Widget049 extends StatelessWidget{
  const Widget049 ({Key? key}) : super(key:key);

  @override
   Widget build(BuildContext context){
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(200, 15, 20, 10),
        primaryColor: CupertinoColors.opaqueSeparator,
      ) ,
      home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('Cupertino App'),
    ),
    child: Center(
      child: Text('This is Cuportino Page'),
    ),
      ),
    );
  }
}

