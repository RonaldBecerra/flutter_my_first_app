import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Text("Inicio", style:TextStyle(color: Colors.white)),
      backgroundColor: Colors.pinkAccent,
      elevation: 20,
      shadowColor: Colors.white,
      centerTitle: true,
      toolbarOpacity: 0.5,
      leading: Icon(Icons.arrow_back, color: Colors.white),
      actions: [
        Icon(Icons.search, color: Colors.white),
        Icon(Icons.more_vert, color: Colors.white),
      ],
      toolbarHeight: 100,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}