import 'package:flutter/material.dart';
import 'package:my_first_app/Model/Sound.dart';

class SoundListTile extends StatelessWidget{
  Sound sound;
  int index;
  SoundListTile(this.sound, this.index);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(
        sound.title,
        style: TextStyle(
          fontSize: 32,
          fontFamily: "Teko",
          color: Colors.blueGrey,
        ),
      ),
      subtitle: Text(
        sound.author,
        style: TextStyle(
          fontSize: 22,
          fontFamily: "Teko",
          color: Colors.blueGrey,
        ),
      ),
      trailing: Icon(Icons.more_vert),
      leading: Icon(Icons.play_circle_fill, color: Colors.redAccent),
    );
  }
}