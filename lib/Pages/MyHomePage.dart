import 'package:flutter/material.dart';
import 'package:my_first_app/Common/HomeArguments.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/AppBarCF.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/FloatingActionButtonCF.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/ImageCF.dart';
import 'package:my_first_app/Widgets/Basicos/MyAppBar.dart';
import 'package:my_first_app/Widgets/Basicos/MyButtons.dart';
import 'package:my_first_app/Widgets/Basicos/MyFloatingActionButton.dart';
import 'package:my_first_app/Widgets/Basicos/MyIcon.dart';
import 'package:my_first_app/Widgets/Basicos/MyImage.dart';
import 'package:my_first_app/Widgets/Basicos/MyRichText.dart';
import 'package:my_first_app/Widgets/Menu/Fragments/MyHome.dart';
import 'package:my_first_app/Widgets/Menu/Fragments/MyProfile.dart';
import 'package:my_first_app/Widgets/Menu/Fragments/MySetting.dart';
import 'package:my_first_app/Widgets/Menu/MyBottomNavigatorBar.dart';
import 'package:my_first_app/Widgets/Menu/MyDrawer.dart';

import '../Widgets/Basicos/MyText.dart';

// Los comentarios originales de esto fueron dejados
// en el archivo main.dart
class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Original de la aplicación demo
  /*int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  List fragments = [
    MyHome(),
    MyProfile(),
    MySetting(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return menusModulo6();
  }

  onTab(int index){
    setState(() {
      this.currentIndex = index;
    });
  }

  // Como quedó con actividad del módulo 2, más modificaciones en el módulo 6
  menusModulo6(){
    //HomeArguments homeArguments = ModalRoute.of(context)!.settings.arguments as HomeArguments;
    //var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      drawer: MyDrawer(onTab),
      bottomNavigationBar: MyBottomNavigatorBar(onTab, currentIndex),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButtonCF(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      appBar: AppBarCF("Codigo Facilito"),
      //appBar: AppBarCF(args),
      /*body: SafeArea(
        child: Center(child: Text("Hola mundo")),
        //child: Center(child: ImageCF()),
      ),*/
      body: fragments[currentIndex],
    );
  }

  // Para la actividad extra del módulo 2
  actividadExtraModulo2(){
    HomeArguments homeArguments = ModalRoute.of(context)!.settings.arguments as HomeArguments;
    //var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButtonCF(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      appBar: AppBarCF(homeArguments.title),
      //appBar: AppBarCF(args),
      body: SafeArea(
        child: Center(child: Text(homeArguments.message)),
        //child: Center(child: ImageCF()),
      ),
    );
  }

  // PPrimer diseño que tuvimos
  initialDesign(){
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
}