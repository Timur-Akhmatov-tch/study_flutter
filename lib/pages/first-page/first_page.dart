
import 'package:flutter/material.dart';
import 'home_screen.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //
      //theme: ThemeData(primaryColor: Colors.black),
      home: HomeScreen(),
    );
  }
}
