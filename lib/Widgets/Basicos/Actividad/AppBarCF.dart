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
      /*leading: Icon(
        Icons.star_border,
        color: Colors.white,
        size: 30,
      ),*/
      actions: [
        Icon(Icons.edit, color: Colors.white),
        PopupMenuButton(
          color: Colors.red,
          elevation: 30,
          shape: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 10,
            ),
          ),
          icon: Icon(Icons.more_vert, color: Colors.white),
          itemBuilder: (context)=>[
            PopupMenuItem(
              value: 1,
              child: Text("Compartir"),
            ),
            PopupMenuItem(
              value: 2,
              child: Text("Obtener Link"),
            ),
          ],
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(200);
}