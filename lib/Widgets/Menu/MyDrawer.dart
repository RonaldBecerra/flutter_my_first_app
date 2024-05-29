import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/Cody.jpeg"),
            ),
            accountName: Text("Ronald Becerra"),
            accountEmail: Text("ronaldbecerrag@gmail.com"),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Inicio"),
          ),
          ListTile(
            leading: Icon(Icons.playlist_play_outlined),
            title: Text("Mi lista"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Configuración"),
          ),
          Divider(
            height: 6,
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.close),
            title: Text("Cerrar Sesión"),
          ),
        ],
      ),
    );
  }
}