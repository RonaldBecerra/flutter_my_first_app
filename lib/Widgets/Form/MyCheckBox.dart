import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyCheckBoxState();
}

class MyCheckBoxState extends State<MyCheckBox>{
  String currentValue="";
  List<String>courses = ["Flutter","Dart","PHP","android","iOS"];
  List<bool>isChecked = [];

  @override
  void initState() {
    isChecked = List<bool>.filled(courses.length, false);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Text(isChecked.toString()),
        ListView.builder(
          shrinkWrap: true,
          itemCount: courses.length,
          itemBuilder: (context, index){
            return CheckboxListTile(
              title: Text(courses[index]),
              value: isChecked[index],
              onChanged: (value){
                setState(() {
                  isChecked[index] = value as bool;
                });
              }
            );
          }
        ),
      ],
    );
  }
}