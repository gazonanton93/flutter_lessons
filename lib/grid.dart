import 'package:flutter/material.dart';



class GridScreen extends StatefulWidget {
  

  @override
  _GridScreenState createState() => _GridScreenState();
}

class TutList {
  String fio;
  String place;
  String date;
  String img;
  String descr;

  TutList({this.fio, this.place, this.date, this.img, this.descr});
}


class _GridScreenState extends State<GridScreen> {
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
        descr:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    TutList(
        fio: "Сидоров Евгений Петрович",
        place: "Санкт-Петербург",
        date: "11.10.2010",
        img: 'img/3.png',
        descr:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    TutList(
        fio: "Агафонова Оксана Евгеньевна",
        place: "Омск",
        date: "25.05.2017",
        img: 'img/4.png',
        descr:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    TutList(
        fio: "Петров Сергей Семенович",
        place: "Новосибирск",
        date: "05.06.2018",
        img: 'img/2.png',
        descr:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    TutList(
        fio: "Сидоров Евгений Петрович",
        place: "Санкт-Петербург",
        date: "11.10.2010",
        img: 'img/3.png',
        descr:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    TutList(
        fio: "Агафонова Оксана Евгеньевна",
        place: "Омск",
        date: "25.05.2017",
        img: 'img/4.png',
        descr:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    TutList(
        fio: "Шолохова Анна Алексеевна",
        place: "Тюмень",
        date: "15.12.2015",
        img: 'img/5.png',
        descr:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 15,
        mainAxisSpacing: 20,
        crossAxisCount: 3,
        children: _buildList(),
        ),
    );
  }


  List<Widget> _buildList() {
    return data.map((TutList e) => Container(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(e.img),
            minRadius: 50,
            maxRadius: 50,
          ),
          Text(e.place)
        ],
      ),
    )).toList();
  }
}