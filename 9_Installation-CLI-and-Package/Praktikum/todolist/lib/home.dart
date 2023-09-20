import 'package:flutter/material.dart';
import 'package:todolist/colors.dart';

class Home extends StatelessWidget{
  const Home({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
       child: Text('Hello'
       ),
      )
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: tdbgcolor,
      title: Row(children: [
        Icon(Icons.menu, color: tdblack,
        size: 30,)
      ],),
    );
  }
}