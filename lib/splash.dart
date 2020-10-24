import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_lessons/homescreen.dart';

import 'package:flutter_lessons/styles/textstyle.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
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
                Text('Flutter\n', style: ThemeText.splashHead,),
                
                SpinKitChasingDots(
                  color: Colors.white,
                  size: 50,
                )
                
              ],
            ),
            Text('powered by Flutter\n', style: ThemeText.sliverText,)
          ],
        ),
      ),
    );
  }
}