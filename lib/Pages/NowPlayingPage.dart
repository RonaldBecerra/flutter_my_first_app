import 'package:flutter/material.dart';
import 'package:my_first_app/Pages/MyHomePage.dart';

class NowPlayingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => NowPlayingPageState();
}

class NowPlayingPageState extends State<NowPlayingPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          child: Text("MyHomePage"),
          onPressed: () => {
            /*Navigator.push(context, MaterialPageRoute(
              builder: (context) => MyHomePage(),
            ))*/
            Navigator.pop(context),
          },
        ),
      ),
    );
  }

}