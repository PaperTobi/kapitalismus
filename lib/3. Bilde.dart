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
          title: const Text('Tobi'),
          backgroundColor: const Color.fromRGBO(0, 41, 255, 1.0),
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2, // Half screen height
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://cdn.papertobi.de/logos/PaperTobi/PaperTobi.png'),
                ),
              ),
            ),
            // Placeholder for local image
            Expanded( // Take remaining space
              child: Center(
                child: Image.asset('images/blue.png'), // Replace with your local image path
              ),
            ),
          ],
        ),
      ),
    );
  }
}