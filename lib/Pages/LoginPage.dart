import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/Common/HomeArguments.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Widgets/Form/MyCheckBox.dart';
import 'package:my_first_app/Widgets/Form/MyDatePicker.dart';
import 'package:my_first_app/Widgets/Form/MyDropdownButton.dart';
import 'package:my_first_app/Widgets/Form/MyRadio.dart';
import 'package:my_first_app/Widgets/Form/MySwitch.dart';
import 'package:my_first_app/Widgets/Form/MyTextField.dart';

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
        child: privateTextField(),
      ),
    );
  }

  privateTextField()=>MyTextField();
  privateSwitch()=>MySwitch();
  privateDropdownButton()=>MyDropdownButton();
  privateDatePicker()=>MyDatePicker();
  privateCheckBox()=>MyCheckBox();
  privateRadio()=>MyRadio();

  privateElevatedButton(){
    return ElevatedButton(
      child: Text("MyHomePage"),
      onPressed: () => {
        Navigator.pushNamed(context, ROUTE_HOME, arguments: HomeArguments("Home", "Hola mundo")),
        //Navigator.pushNamed(context, ROUTE_HOME, arguments: "Home"),
        /*Navigator.push(context, CupertinoPageRoute(
                builder: (context)=> MyHomePage(),
            ))*/
        //Navigator.pop(context),
      },
    );
  }

}