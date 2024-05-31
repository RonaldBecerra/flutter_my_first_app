import 'package:flutter/material.dart';
import 'package:my_first_app/Values/ColorsApp.dart';
import 'package:my_first_app/Values/TextStyleApp.dart';

class ThemeApp {
  TextStyleApp? textStyleApp;

  ThemeApp() {
    textStyleApp = TextStyleApp();
  }

  // OJO: Como los nombres estaban deprecados, los cambié por lo que me salía
  // en las sugerencias. Por ejemplo, ya no se usa subtitle1 sino titleMedium,
  // y así con el resto.
  TextTheme get textTheme => TextTheme(
    titleMedium: textStyleApp!.subtitle1,
    bodyMedium: textStyleApp!.bodyText2,
    bodyLarge: textStyleApp!.bodyText1,
    headlineMedium: textStyleApp!.headline4,
    displaySmall: textStyleApp!.headline3,
    bodySmall: textStyleApp!.caption,
  );
  TextTheme get textThemeDark => TextTheme(
    titleMedium: textStyleApp!.subtitle1Dark,
    bodyMedium: textStyleApp!.bodyText2Dark,
    bodyLarge: textStyleApp!.bodyText1Dark,
    headlineMedium: textStyleApp!.headline4Dark,
    displaySmall: textStyleApp!.headline3Dark,
    bodySmall: textStyleApp!.caption,
  );

  IconThemeData get iconThemeData1 => IconThemeData(
    color: icon1Color,
  );

  IconThemeData get iconThemeData2 => iconThemeData1.copyWith(
    color: icon2Color,
  );

  IconThemeData get iconThemeDark => IconThemeData(
    color: iconDark,
  );
}