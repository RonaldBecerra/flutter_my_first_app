import 'package:flutter/material.dart';
import 'package:my_first_app/Model/Sound.dart';
import 'package:my_first_app/Values/DimensApp.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Actividad/CoverContainer.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Actividad/SoundListTitle.dart';

class PlayListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=>PlayListViewState();
}

class PlayListViewState extends State<PlayListView>{
  List<Sound>mySounds = [];

  @override
  void initState() {
    this.mySounds = sounds;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            height: coverHeight, //270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sounds.length,
              itemBuilder: (context, index){
                return CoverContainer(this.mySounds[index].cover);
              },
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: sounds.length,
            itemBuilder: (context, index){
              return SoundListTile(this.mySounds[index], index);
            },
          ),
        ],
      ),
    );
  }
}