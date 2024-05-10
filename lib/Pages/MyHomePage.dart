import 'package:flutter/material.dart';
import 'package:my_first_app/Widgets/MyIcon.dart';
import 'package:my_first_app/Widgets/MyRichText.dart';

import '../Widgets/MyText.dart';

// Los comentarios originales de esto fueron dejados
// en el archivo main.dart
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SafeArea(
        child: MyIcon(),
      )
    );
  }
}