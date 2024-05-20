import 'package:flutter/material.dart';
import 'package:my_first_app/Model/Sound.dart';

class MyListTile extends StatelessWidget{
  Sound sound;
  MyListTile(this.sound);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(sound.title, style: TextStyle(fontSize: 30)),
      subtitle: Text(sound.author),
      trailing: Icon(Icons.more_vert),
      leading: Icon(Icons.chrome_reader_mode),
      onTap: (){print("ListTile");},
      onLongPress: (){print("ListTile onLongPress");},
    );
  }

  testListTile(){
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