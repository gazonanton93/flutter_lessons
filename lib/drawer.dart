import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  MainDrawer({Key key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('my_name'),
              accountEmail: Text('my_name@email.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('img/1.png'),
              ),
              ),
          ListTile(title: Text('Menu_item1')),
          Divider(),
           ListTile(title: Text('Menu_item2')),
          Divider(),
           ListTile(title: Text('Menu_item3')),
          Divider(),
           ListTile(title: Text('Menu_item4')),
          Divider(),

        ],
      ),
    );
  }
}
