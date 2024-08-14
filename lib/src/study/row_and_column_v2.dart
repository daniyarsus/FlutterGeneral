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
        Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0), // margin should be EdgeInsets
              padding: const EdgeInsets.all(10.0), // padding should be EdgeInsets
              height: 50.0, // height should be double
              width: double.infinity, // width set to double.infinity to take full width
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.grey[300],
              ),
              child: const Center(
                child: Text("This is 1 container in column"),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              height: 50.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.grey[300],
              ),
              child: const Text("This is 2 container in column"),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0), // margin should be EdgeInsets
              padding: const EdgeInsets.all(10.0), // padding should be EdgeInsets
              height: 50.0, // height should be double
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.grey[300],
              ),
              child: const Text("This is 1 container in row"),
            ),
            Container(
                margin: const EdgeInsets.all(10.0), // margin should be EdgeInsets
                padding: const EdgeInsets.all(10.0), // padding should be EdgeInsets
                height: 50.0, // height should be double
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.grey[300],
                ),
              child: const Text("This is 2 container in row"),
            ),
          ],
        )
      ],
    );
  }
}