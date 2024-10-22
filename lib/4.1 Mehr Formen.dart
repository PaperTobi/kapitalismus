import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Added const constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
            centerTitle: true,
            title: Text('ColumnsRows dinger')
        ),
        body: Container(
            color: Colors.white,
            child: Text('Container Text')
        ),
      ),
    );
  }
}