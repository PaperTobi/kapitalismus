import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea( // Added SafeArea widget
          child: Center(
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  'Tobias Eidloth',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10),
                    Text('+49 696969696969'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 10),
                    Text('papertobi-contact@proton.me'),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Placeholder(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}