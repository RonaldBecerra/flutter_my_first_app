import 'package:flutter/material.dart';

class MyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //return Image(image: AssetImage("assets/images/Cody.jpeg"),
    //return Image(image: NetworkImage("https://i.ibb.co/6NPnmVJ/unnamed.jpg"), // Cody
    //return Image(image: NetworkImage("https://i.ibb.co/6rrsr0f/icone-android-vert.png"), // Android
    return Image(image: NetworkImage("https://i.ibb.co/61ntk1d/spongebob-technology.gif"), // Sponge Bob
      width: 300,
      height: 300,
      fit: BoxFit.cover,
      //color: Colors.white,
      errorBuilder: (BuildContext context,
          Object error,
          StackTrace? stackTrace){
        //return Text("Error al cargar la imagen");
        return Image.asset("assets/images/Cody.jpeg");
      },
    );
  }
}