import 'package:flutter/material.dart';

class AppBarCF extends StatelessWidget implements PreferredSizeWidget{
  String title;
  AppBarCF(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Text(this.title, style:TextStyle(color: Colors.white)),
      backgroundColor: Colors.teal,
      elevation: 20,
      shadowColor: Colors.white,
      centerTitle: true,
      leading: Icon(
        Icons.star_border,
        color: Colors.white,
        size: 29,
      ),
      actions: [
        Icon(Icons.edit, color: Colors.white),
        Icon(Icons.more_vert, color: Colors.white),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight * 3);
}