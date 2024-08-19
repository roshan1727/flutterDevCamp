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
      width: 100,
      color: Colors.amber,
      child: const Text('dashboard'),
    ),
    ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Container(
          height: 70.0,
          color: Colors.cyanAccent,
          child: const Text('Data One'),
        ),
        Container(
          height: 70.0,
          color: Colors.amber,
          child: const Text('Data 2'),
        ),
        Container(
          height: 70.0,
          color: Colors.redAccent,
          child: const Text('Data 3'),
        ),
        Container(
          height: 70.0,
          color: Colors.purpleAccent,
          child: const Text('Data Four'),
        )
      ],
    ),
    Container(
      width: 100,
      color: Colors.white,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Welcome Home '),
          Image(
            image: AssetImage('assets/image/Banner.png'),
            height: 400,
          )
        ],
      ),
    )
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
