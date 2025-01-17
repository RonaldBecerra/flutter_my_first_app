import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return myOutlineButton();
  }

  myElevatedButton(){
    return ElevatedButton.icon(
      icon: Icon(Icons.save,
        color: Colors.red,
      ),
      label: Text("Guardar"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black, // Text color
        shadowColor: Colors.yellow,
        elevation: 20,
      ),
      onLongPress: () {
        print("ElevatedButton onLongPress");
      },
      onPressed: () {
        print("ElevatedButton");
      },
    );
  }

  myTextButton(){
    return TextButton(
        onPressed: (){
          print("TextButton");
        },
        child: Text("Guardar"),
    );
  }

  myOutlineButton(){
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.yellow, width: 4),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        onPressed: (){
          print("OutlinedButton");
        },
        child: Text("Guardar"),
    );
  }
}