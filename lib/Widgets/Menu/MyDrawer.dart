import 'package:flutter/material.dart';

typedef VoidCallbackParam(int index);

class MyDrawer extends StatelessWidget{
  VoidCallbackParam voidCallbackParam;
  MyDrawer(this.voidCallbackParam);

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
            onTap: ()=>voidCallbackParam(0),
          ),
          ListTile(
            leading: Icon(Icons.playlist_play_outlined),
            title: Text("Mi lista"),
            onTap: ()=>voidCallbackParam(1),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Configuración"),
            onTap: ()=>voidCallbackParam(2),
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