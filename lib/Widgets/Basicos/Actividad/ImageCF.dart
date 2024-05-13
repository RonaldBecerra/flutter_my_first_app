import 'package:flutter/material.dart';

class ImageCF extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Cody with white background
    return Image(image: NetworkImage("https://i.imgur.com/t8qXd3Q.png"),
      width: 320,
      height: 320,
      fit: BoxFit.scaleDown,
      errorBuilder: (BuildContext context,
          Object error,
          StackTrace? stackTrace){
        //return Text("Error al cargar la imagen");
        return Image.asset("assets/images/Cody.jpeg");
      },
    );
  }
}