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
        appBar: AppBar(title: const Text('Multiple Containers Example')),
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 100,
              width: double.infinity,
              child: const Center(child: Text('Container 1')),
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: double.infinity,
              child: const Center(child: Text('Container 2')),
            ),
            Container(
              color: Colors.red,
              height: 100,
              width: double.infinity,
              child: const Center(child: Text('Container 3')),
            ),
            Container(
              color: Colors.black,
              height: 100,
              width: double.infinity,
              child: const Center(child: Text('Container 4')),
            ),
            Container(
              color: Colors.deepPurpleAccent,
              height: 100,
              width: double.infinity,
              child: const Center(child: Text('Container 5')),
            ),
            Container(
              color: Colors.red,
              height: 100,
              width: double.infinity,
              child: const Center(child: Text('Container 3')),
            ),
            Container(
              color: Colors.black,
              height: 100,
              width: double.infinity,
              child: const Center(child: Text('Container 4')),
            ),
            Container(
              color: Colors.deepPurpleAccent,
              height: 100,
              width: double.infinity,
              child: const Center(child: Text('Container 5')),
            ),
            Container(
              color: Colors.red,
              height: 100,
              width: double.infinity,
              child: const Center(child: Text('Container 3')),
            ),
            Container(
              color: Colors.black,
              height: 100,
              width: double.infinity,
              child: const Center(child: Text('Container 4')),
            ),
            Container(
              color: Colors.deepPurpleAccent,
              height: 100,
              width: double.infinity,
              child: const Center(child: Text('Container 5')),
            ),
          ],
        ),
      ),
    );
  }
}
