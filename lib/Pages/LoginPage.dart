import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyRouters.dart';

import 'MyHomePage.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          child: Text("MyHomePage"),
          onPressed: () => {
            Navigator.pushNamed(context, ROUTE_HOME),
            /*Navigator.push(context, CupertinoPageRoute(
                builder: (context)=> MyHomePage(),
            ))*/
            //Navigator.pop(context),
          },
        ),
      ),
    );
  }

}