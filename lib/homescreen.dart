import 'package:flutter/material.dart';
import 'package:flutter_lessons/grid.dart';

import 'package:flutter_lessons/styles/textstyle.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(

      color: Color.fromRGBO(20, 100, 100, 1),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                      child: Container(
              height: MediaQuery.of(context).size.height-90,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('img/bg.jpg'), fit: BoxFit.cover)),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Opacity(
                        opacity: 0.8,
                        child: Text('FLUTTERON', style: ThemeText.logo,)),
                      Text('Welcome', style: ThemeText.welcome,),

                      Column(
                        children: [
                          Text('Login or create a new account\n', style: ThemeText.descr,),

                          Icon(Icons.keyboard_arrow_down, color: Colors.white,)
                        ],
                      )
                    ],

                  ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap:() {
Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          GridScreen()));
                  } ,
                                  child: Row(
                      children: [
                        Text('LOGIN', style: ThemeText.bottommenu,),
                        Icon(Icons.keyboard_arrow_right, color: Colors.white,)
                      ],
                    ),
                ),
                Row(
                  children: [
                    Text('NEW', style: ThemeText.bottommenu,),
                    Icon(Icons.add, color: Colors.white,)
                  ],
                )
              ],
            ),
          )


        ],
      ),
    );
  }
}
