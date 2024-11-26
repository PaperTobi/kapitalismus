import 'package:flutter/material.dart';

void main() {
  runApp(const Flugzeug());
}

class Flugzeug extends StatefulWidget {
  const Flugzeug({Key? key}) : super(key: key);

  @override
  _FlugzeugZahl createState() => _FlugzeugZahl();
}

class _FlugzeugZahl extends State<Flugzeug> {
  int zahl = 0;

  void hoch() {
    setState(() {
      zahl++;
    });
  }

  void runter() {
    setState(() {
      if (zahl > 0) {
        zahl--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PaperTobi.de'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                '$zahl',
                style: const TextStyle(fontSize: 169),
              ),
              const SizedBox(height: 20),
              const Icon(
                Icons.airplanemode_active,
                size: 96,
                color: Colors.blue,
              ),
              const SizedBox(height: 20), // Added spacing
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: runter,
                    child: const Icon(Icons.remove_circle_sharp),
                  ),
                  FloatingActionButton(
                    onPressed: hoch,
                    child: const Icon(Icons.add_box_sharp),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
