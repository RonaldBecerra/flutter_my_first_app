import 'package:flutter/material.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';

class MyGridView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return dynamicGridView();
  }

  dynamicGridView(){
    return GridView.builder(
      /*gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),*/
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        crossAxisSpacing: 30,
        mainAxisSpacing: 40,
      ),
      itemCount: 30,
      itemBuilder: (context, index) => MyCard(),
    );
  }

  staticGridView(){
    return GridView(
      /*gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),*/
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        crossAxisSpacing: 30,
        mainAxisSpacing: 40,
      ),
      physics: NeverScrollableScrollPhysics(),
      children: [
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
      ],
    );
  }
}