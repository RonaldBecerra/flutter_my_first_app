import 'package:flutter/material.dart';
import 'package:my_first_app/Values/ColorsApp.dart';

class TextStyleApp{

  TextStyleApp();

  TextStyle get textBase => TextStyle(
    color: textColor1,
    fontFamily: "Teko",
  );

  TextStyle get subtitle1 => textBase.copyWith(
    fontWeight: FontWeight.w400,
    //fontSize:
  );
  TextStyle get subtitle1Dark => subtitle1.copyWith(
    color: textDark,
  );


  TextStyle get bodyText1 => textBase.copyWith(
    //fontSize:
  );
  TextStyle get bodyText1Dark => bodyText1.copyWith(
    color: textDark,
  );


  TextStyle get bodyText2 => textBase.copyWith(
    //fontSize:
    fontWeight: FontWeight.bold,
    color: textColor2,
  );
  TextStyle get bodyText2Dark => bodyText2.copyWith(
    color: textDark,
  );


  TextStyle get headline4 => textBase.copyWith(
    //fontSize:
  );
  TextStyle get headline4Dark => headline4.copyWith(
    color: textDark,
  );

  
  TextStyle get headline3 => textBase.copyWith(
    //fontSize:
  );
  TextStyle get headline3Dark => headline3.copyWith(
    color: textDark,
  );
}