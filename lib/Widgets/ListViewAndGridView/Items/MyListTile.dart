import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text("Curso de Flutter", style: TextStyle(fontSize: 30)),
      subtitle: Text("By Código Facilito"),
      trailing: Icon(Icons.more_vert),
      leading: Icon(Icons.chrome_reader_mode),
      onTap: (){print("ListTile");},
      onLongPress: (){print("ListTile onLongPress");},
    );
  }
  
}