import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return extendedActionButton();
  }

  normalActionButton(){
    return FloatingActionButton(
      onPressed: (){
        print("FloatingActionButton");
      },
      child: Icon(Icons.add, size:40),
      backgroundColor: Colors.yellow,
      elevation: 20,
      tooltip: "Agregar Usuario",
    );
  }

  extendedActionButton(){
    return FloatingActionButton.extended(
      onPressed: (){
        print("ExtendedFloatingActionButton");
      },
      // En mi caso no es necesario colocar colores negros en los dos atributos
      // de abajo, porque por defecto ya se hace así, pero lo dejo para ilustrar
      icon: Icon(Icons.add, size:40, color: Colors.black),
      label: Text("Agregar Usuario", style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.yellow,
      elevation: 20,
      tooltip: "Agregar Usuario",
    );
  }
}