import 'package:flutter/material.dart';

class PlayingNowButton extends StatelessWidget{
  IconData icon;
  var onPressed;
  Color? iconColor;
  Color? backGroundColor;

  PlayingNowButton(this.icon,
    this.onPressed, {this.iconColor = Colors.white,
      this.backGroundColor = Colors.transparent}
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: onPressed, 
      child: Icon(
          icon,
          color: iconColor,
          size: 35,
      ),
      style: ElevatedButton.styleFrom(
        padding:EdgeInsets.zero,
        backgroundColor: backGroundColor,
        shadowColor: backGroundColor,
      ),
    );
  }
}