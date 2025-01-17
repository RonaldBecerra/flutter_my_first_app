import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/Pages/LoginPage.dart';
import 'package:my_first_app/Pages/MyHomePage.dart';
import 'package:my_first_app/Pages/NowPlayingPage.dart';
import 'package:my_first_app/Pages/PlayListPage.dart';
import 'package:page_transition/page_transition.dart';

const String ROUTE_HOME = "/home";
const String ROUTE_LOGIN = "/login";
const String ROUTE_PLAY_LIST = "/play_list";
const String ROUTE_NOW_PLAYING = "/now_playing";

class MyRouters{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case ROUTE_HOME:
        //return MaterialPageRoute(builder: (_)=>MyHomePage());
        return PageTransition(
          child:MyHomePage(),
          type: PageTransitionType.scale,
          settings: settings,
          alignment: Alignment.topLeft,
        );
      case ROUTE_LOGIN:
        return MaterialPageRoute(builder: (_)=>LoginPage());
      case ROUTE_PLAY_LIST:
        return MaterialPageRoute(builder: (_)=>PlayListPage());
      case ROUTE_NOW_PLAYING:
        return MaterialPageRoute(builder: (_)=>NowPlayingPage());
      default:
        return MaterialPageRoute(builder: (_)=>LoginPage());
    }
  }
}