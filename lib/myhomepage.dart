import 'package:flutter/material.dart';
import 'package:flutter_lessons/detail.dart';
import 'package:flutter_lessons/drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';



import 'styles/textstyle.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class TutList {
  String fio;
  String place;
  String date;
  String img;
  String descr;

  TutList({this.fio, this.place, this.date, this.img, this.descr});
}

class _MyHomePageState extends State<MyHomePage> {
  SharedPreferences prefs;
  String un = "";
  List<TutList> data = [
    TutList(
        fio: "Иванов Иван Иванович",
        place: "Москва",
        date: "01.02.2020",
        img: 'img/1.png',
        descr:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    TutList(
        fio: "Петров Сергей Семенович",
        place: "Новосибирск",
        date: "05.06.2018",
        img: 'img/2.png',
        descr: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    TutList(
        fio: "Сидоров Евгений Петрович",
        place: "Санкт-Петербург",
        date: "11.10.2010",
        img: 'img/3.png',
        descr: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    TutList(
        fio: "Агафонова Оксана Евгеньевна",
        place: "Омск",
        date: "25.05.2017",
        img: 'img/4.png',
        descr: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    TutList(
        fio: "Шолохова Анна Алексеевна",
        place: "Тюмень",
        date: "15.12.2015",
        img: 'img/5.png',
        descr: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(un),
      ),
      body: ListView(
        children: _buildList(),
      ),
    );
  }

  List<Widget> _buildList() {
    return data
        .map((TutList e) => InkWell( child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container( child: Row( children: [
                  Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10),  topLeft: Radius.circular(10)),
                        child: Container(
                          child: Image.asset(e.img,  fit: BoxFit.cover,  height: 200, width: 90,
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 7,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), topRight: Radius.circular(10)),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [Color.fromRGBO(114, 124, 245, 1), Color.fromRGBO(114, 124, 245, 0.75)
                          ])),
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(e.fio, style: ThemeText.ercCardheader, ),
                                Text(e.place, style: ThemeText.ercCard,),
                                Text(e.date,  style: ThemeText.ercCard,)
                              ],),
                          ),
                        ),
                      ))
                ], ),
            ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(e.fio, e.place, e.date, e.img, e.descr)));
          }
        ))
        .toList();
  }


  username() async {
      prefs = await SharedPreferences.getInstance();
      setState(() {
        un = prefs.getString('fname')+' '+prefs.getString('lname');
      });
      
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    username();
  }
}
