import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_lessons/Landing.dart';
import 'package:flutter_lessons/styles/textstyle.dart';



class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Landing()));
    });
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Column(
              children: [
                Text('Flutter', style: ThemeText.splashHead,),
              ],
            ),
            Text('powered by Flutter\n', style: ThemeText.sliverText,)
          ],
        ),
      ),
    );
  }
}