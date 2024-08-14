import 'package:flutter/material.dart';


void main() {
  runApp(const InstagramLoginPage());
}


class InstagramLoginPage extends StatelessWidget {
  const InstagramLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("English (India) ..."),
        ),
        body: Column(
          children: [
            Container(
              alignment: const Alignment(0.0, 0.0),
              child: const Text("Instagram", style: TextStyle(fontFamily: 'Arial', fontSize: 30.0)),
            ),
          ],
        ),
      ),
    );
  }
}