import 'package:flutter/material.dart';

class CoverContainer extends StatelessWidget {
  String image;
  CoverContainer(this.image);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 170,
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(this.image),
        ),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(4,5),
          )
        ],
      ),
    );
  }
}