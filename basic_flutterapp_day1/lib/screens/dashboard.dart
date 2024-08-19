import 'package:basic_flutterapp_day1/screens/SearchScreen.dart';
import 'package:basic_flutterapp_day1/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardScreen extends StatefulWidget {
  String? username;
  DashboardScreen(this.username, {super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List items = [
    Container(
      width: 700,
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      color: Colors.indigo[50],
      child: ListView(
        children: const [
          ListTile(
            title: Text('Task'),
            tileColor: Colors.blueGrey,
            selectedTileColor: Colors.blue,
            leading: Icon(Icons.note_add),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
              title: Text('Projects'),
              leading: Icon(Icons.account_tree_outlined),
              trailing: Icon(Icons.navigate_next),
              tileColor: Colors.blueGrey),
          ListTile(
              title: Text('work commpleted'),
              leading: Icon(Icons.done),
              trailing: Icon(Icons.navigate_next),
              tileColor: Colors.blueGrey)
        ],
      ),
    ),
    const SearchScreen(),
    const ProfilePage()
  ];
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.username} Dashboard'),
      ),
      body: items[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedFontSize: 15.0,
          unselectedFontSize: 10.0,
          selectedItemColor: Colors.blue,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.stacked_bar_chart), label: 'DashBoard'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: 'Profile')
          ]),
    );
  }
}
