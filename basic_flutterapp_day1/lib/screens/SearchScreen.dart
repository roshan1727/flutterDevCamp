// ignore: file_names
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
    );
  }
}
