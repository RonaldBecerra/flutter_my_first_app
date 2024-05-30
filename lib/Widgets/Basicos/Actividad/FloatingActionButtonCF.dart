import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Pages/PlayListPage.dart';

class FloatingActionButtonCF extends StatelessWidget{
  VoidCallback? voidCallback;
  FloatingActionButtonCF(this.voidCallback);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      onPressed: () => {
        if (voidCallback == null){
          Navigator.pushNamedAndRemoveUntil(
              context,
              ROUTE_PLAY_LIST,
              (Route<dynamic>route) => false
          ),
          //Navigator.popAndPushNamed(context, ROUTE_PLAY_LIST),
          /*
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => PlayListPage(),
          ))*/
          //Navigator.pop(context)
        }
        else{
          voidCallback!(),
        }
      },
      child: Icon(
          Icons.add,
          size:30,
          color: Colors.white,
      ),
      backgroundColor: Colors.orangeAccent,
      elevation: 20,
      shape: CircleBorder(),
    );
  }
}