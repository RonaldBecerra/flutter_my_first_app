import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            /*Navigator.push(context, CupertinoPageRoute(
                builder: (context)=> MyHomePage(),
            ))*/
            Navigator.pop(context),
          },
        ),
      ),
    );
  }

}