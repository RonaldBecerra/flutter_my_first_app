import 'package:flutter/material.dart';
import 'package:my_first_app/Model/Sound.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyContainer.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';

class MyListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.red,
      child: ListView.builder(
        shrinkWrap: true,
        reverse: true,
        //physics: NeverScrollableScrollPhysics(),
        //scrollDirection: Axis.horizontal,
        itemCount: sounds.length,
        itemBuilder: (context,index)=>MyListTile(sounds[index]),
        //itemBuilder: (context,index)=>MyContainer(),
      ),
    );
  }
}