import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Titel der App'),
          backgroundColor: Color.fromRGBO(0, 41, 255, 1.0),
        ),
        body: const Column(
          children: [
            Center(child: Text('Hauptbereich der App'),),
            Text('Deliver features faster'),
            Text('Craft beautiful UIs'),
            Expanded(child: FittedBox(
              fit: BoxFit.contain,
              child: FlutterLogo(),
            ),),
          ],
        ),
      ),
    );
  } // This was the missing curly brace
}