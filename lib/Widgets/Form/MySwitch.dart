import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MySwitchState();
}

class MySwitchState extends State<MySwitch>{
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*return Switch(
      value: isSwitched,
      onChanged: onChanged,
    );*/
    return SwitchListTile(
      title: Text(isSwitched ? "On" : "off"),
      value: isSwitched,
      activeTrackColor: Colors.black,
      activeColor: Colors.red,
      onChanged: onChanged
    );
  }

  onChanged(value){
    setState(() {
      this.isSwitched=value;
    });
  }
}