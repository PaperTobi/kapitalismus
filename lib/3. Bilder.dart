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
          title: const Text(
            'Tobi',
            style: TextStyle(color: Colors.black26),
          ),
          backgroundColor: Colors.black26, // Set AppBar background color to black26
        ),
        backgroundColor: Colors.black54, // Set the background color of the Scaffold to black54
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2, // Half screen height
              decoration: const BoxDecoration(
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
            const Text(
              'Some text here',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}