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
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Приветствую Вас',
              style: ThemeText.sliverTextHeader,
            ),
            TextField(
              controller: fnameText,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Введите имя'),
            ),
            TextField(
              controller: lnameText,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Введите фамилию'),
            ),
            RaisedButton(
                child: Text('Перейти на домашнюю страницу'), onPressed: () {
                  if (fnameText.text.isNotEmpty && lnameText.text.isNotEmpty) {
                    _saveName();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
                  }
                  else {
                    _showError();
                  }
                })
          ],
        ),
      ),
    );
  }

  _saveName() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('fname', fnameText.text);
    prefs.setString('lname', lnameText.text);
  }

  Future<void> _showError() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Ошибка'),
            content: SingleChildScrollView(
              child: Text('Введите имя и фамилию'),
            ),
            actions: [
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                Navigator.of(context).pop();
              })
            ],
          );
        });
  }
}
