import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "The test shop",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shop page"),
          backgroundColor: Colors.deepPurple,
        ),
        body: const ShopBody(),
      ),
    );
  }
}

class ShopBody extends StatelessWidget {
  const ShopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              child: const Text("first row item"),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              child: const Text("second row item"),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              child: const Text("first column item"),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              child: const Text("second column item"),
            ),
          ],
        ),
      ],
    );
  }
}
