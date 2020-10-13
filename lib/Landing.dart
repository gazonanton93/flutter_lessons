import 'package:flutter/material.dart';
import 'package:flutter_lessons/myhomepage.dart';
import 'package:flutter_lessons/styles/textstyle.dart';





class Landing extends StatefulWidget {
  Landing({Key key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  var contText = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(114, 124, 245, 1),
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text('Приветствую Вас', style: ThemeText.sliverTextHeader,),
              TextField(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(color: Colors.white,
                  child: Text('Перейти на домашнюю страницу'),
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}