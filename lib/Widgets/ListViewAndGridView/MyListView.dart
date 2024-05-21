import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Model/Sound.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyContainer.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';

class MyListView extends StatefulWidget {
  MyListView():super(key: myListViewKey);
  @override
  State<StatefulWidget> createState()=>MyListViewState();
}

class MyListViewState extends State<MyListView>{
  List<Sound>mySounds = [];

  @override
  void initState() {
    this.mySounds = sounds;
  }

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
        itemBuilder: (context,index){
          Sound sound = this.mySounds[index];
          return Dismissible(
            direction: DismissDirection.startToEnd,
            key: ObjectKey(sound),
            child: MyListTile(sound, remove),
            onDismissed: (direction){
              remove(sound);
            }
          );
        }, //itemBuilder: (context,index)=>MyContainer(),
      ),
    );
  }

  remove(Sound sound){
    setState(()=>mySounds.remove(sound));
  }
}