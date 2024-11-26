import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PassengerCounter(),
    );
  }
}

class PassengerCounter extends StatefulWidget {
  @override
  _PassengerCounterState createState() => _PassengerCounterState();
}

class _PassengerCounterState extends State<PassengerCounter> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TAICounter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Zählerstand",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              "$counter",
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Icon(
              Icons.airplanemode_active,
              size: 200,
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: _incrementCounter,
            child: const Icon(Icons.add),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
