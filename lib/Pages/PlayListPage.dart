import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Model/Sound.dart';
import 'package:my_first_app/Pages/NowPlayingPage.dart';
import 'package:my_first_app/Values/ColorsApp.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Actividad/PlayListView.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyContainer.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/MyGridView.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/MyListView.dart';
import 'package:my_first_app/generated/l10n.dart';

class PlayListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => PlayListPageState();
}

class PlayListPageState extends State<PlayListPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        //title: Text(S.of(context).welcome),
        title: Text(S.of(context).money("\$20")),
      ),
      //backgroundColor: testOpa,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          myAppKey.currentState!.changeTheme(ThemeMode.dark);
        },
        child: Icon(Icons.add),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: ()=>myListViewKey.currentState?.add(Sound(
          title:"Turuturuturtu", author: "CodigoFacilito")
        ),
        child: Icon(Icons.add),
      ),*/
      body: SafeArea(
        child: privatePlayListView(),
      ),
    );
  }

  privatePlayListView() => PlayListView(); // Actividad del módulo 5
  privateListView() => MyListView();
  privateGridView() => MyGridView();
  //privateListTile() => MyListTile();
  privateCard() => MyCard();
  privateContainer() => MyContainer();

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