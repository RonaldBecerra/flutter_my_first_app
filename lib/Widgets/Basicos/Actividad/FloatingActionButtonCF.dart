import 'package:flutter/material.dart';

class FloatingActionButtonCF extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.add, size:40, color: Colors.white),
      backgroundColor: Color(0xfffcab40),
      elevation: 20,
      tooltip: "Agregar Usuario",
      shape: CircleBorder(),
    );
  }
}