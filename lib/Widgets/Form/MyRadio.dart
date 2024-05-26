import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyRadioState();
}

class MyRadioState extends State<MyRadio>{
  String currentValue="";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        RadioListTile(
          value: "Radio1",
          title: Text("Soltero"),
          groupValue: currentValue,
          onChanged: onChanged,
        ),
        RadioListTile(
          value: "Radio2",
          title: Text("Casado"),
          groupValue: currentValue,
          onChanged: onChanged,
        ),
        Text(currentValue),
      ],
    );
  }

  onChanged(value){
    setState(() {
      this.currentValue = value.toString();
    });
  }
}