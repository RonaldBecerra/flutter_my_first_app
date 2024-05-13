import 'package:flutter/material.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/AppBarCF.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/FloatingActionButtonCF.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/ImageCF.dart';
import 'package:my_first_app/Widgets/Basicos/MyAppBar.dart';
import 'package:my_first_app/Widgets/Basicos/MyButtons.dart';
import 'package:my_first_app/Widgets/Basicos/MyFloatingActionButton.dart';
import 'package:my_first_app/Widgets/Basicos/MyIcon.dart';
import 'package:my_first_app/Widgets/Basicos/MyImage.dart';
import 'package:my_first_app/Widgets/Basicos/MyRichText.dart';

import '../Widgets/Basicos/MyText.dart';

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

  /*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pinkAccent,
        floatingActionButton: MyFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        appBar: MyAppBar(),
        body: SafeArea(
          child: MyButtons(),
        )
    );
  }
  */

  // Para la actividad extra del módulo 2
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButtonCF(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      appBar: AppBarCF(),
      body: SafeArea(
        child: Center(child: ImageCF()),
      )
    );
  }

}