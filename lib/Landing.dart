import 'package:flutter/material.dart';
import 'package:flutter_lessons/myhomepage.dart';
import 'package:flutter_lessons/styles/textstyle.dart';
import 'package:shared_preferences/shared_preferences.dart';





class Landing extends StatefulWidget {
  Landing({Key key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  var fnameText = TextEditingController();
  var lnameText = TextEditingController();

  SharedPreferences prefs;
  
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
              TextField(
                controller: fnameText,
                decoration: InputDecoration(
                border: InputBorder.none,

                hintText: 'Введите имя'
              )),
              TextField(
                controller: lnameText,
                decoration: InputDecoration(
                border: InputBorder.none,   
                hintText: 'Введите фамилию'
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(color: Colors.white,
                  child: Text('Перейти на домашнюю страницу'),
                  onPressed: () {
                  
                 if (fnameText.text.isNotEmpty && lnameText.text.isNotEmpty) {_saveName(); Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));}
                 else {_showErr();}
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  _saveName() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('fname', fnameText.text);
    prefs.setString('lname', lnameText.text);
  }


  Future<void> _showErr() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Ошибка'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Введите имя и фамилию'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
}