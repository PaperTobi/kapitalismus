import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( // Only the Scaffold widget
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Container ffColumns Rows'),
        ),
        body: Container(
          height: 100.0,
          width: 100.0,
          margin: EdgeInsets.all(10.0),
          color: Colors.white ,
          child: Text(
            'Container',
            style: TextStyle(fontSize: 20.0, color: Colors.white), // Added white color for visibility
          ),
        ),
      ),
    );
  }
}