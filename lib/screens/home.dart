import 'package:flutter/material.dart';
import 'package:flutter_animations/shared/screen_title.dart';
import 'package:flutter_animations/screens/sand_box.dart';
import 'package:flutter_animations/shared/trip_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey key = GlobalKey(debugLabel: 'home-key');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"), 
            fit: BoxFit.fitWidth,
            alignment: Alignment.topLeft
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            SizedBox(
              height: 160,
              child: ScreenTitle(text: 'Ninja Trips', key: key,),
            ),
            Flexible(
              child: TripList(),
            ),
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SandBox(),));}, child: Text('Go to SandBox'))
          ],
        )
      )
    );
  }
}

