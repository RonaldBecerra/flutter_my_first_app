import 'package:flutter/material.dart';
import 'package:my_first_app/Pages/NowPlayingPage.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyContainer.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';

class PlayListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => PlayListPageState();
}

class PlayListPageState extends State<PlayListPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: privateListTile(),
      ),
    );
  }

  privateListTile(){
    return MyListTile();
  }

  privateCard(){
    return MyCard();
  }

  privateContainer(){
    return MyContainer();
  }

  privateElevatedButton(){
    return ElevatedButton(
      child: Text("NowPlayingPage"),
      onPressed: () => {
        /*
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => NowPlayingPage(),
            ))*/
        Navigator.pop(context),
      },
    );
  }

}