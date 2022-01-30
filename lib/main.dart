import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
            title: Text('Аптека Афорте', style: TextStyle(fontFamily: 'Manrope'),),
            centerTitle: true,
        ),
        body: Center(
          child:Text('Aforte app', style: TextStyle(
              fontSize: 25,
              color: Colors.blue,
              fontFamily: 'Manrope',
          ),),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          print('clicked!!!');
        },
          child: Text('Add'),
          backgroundColor: Colors.green,
        ),
        ),
      );
  }
  
}
