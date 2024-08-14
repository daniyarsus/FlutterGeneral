import 'package:flutter/material.dart';


class MyShop extends StatelessWidget {
  const MyShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Product details"),
          backgroundColor: Colors.white38,
        ),
        body: Column(
          children: [
            Container(
              // padding: const EdgeInsets.all(33.0),
              alignment: const Alignment(-0.5, 0.5),
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Garden_strawberry_%28Fragaria_%C3%97_ananassa%29_single2.jpg/1200px-Garden_strawberry_%28Fragaria_%C3%97_ananassa%29_single2.jpg",
                height: 300, width: 300,
              )
            ),
            Container(
              alignment: Alignment.topCenter,
              child: const Text("Strawberry"),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Вернуться',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.follow_the_signs),
            label: 'Главная страница',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new_sharp),
            label: 'Новые записи',
            ),
          ],
        )
      )
    );
  }
}


void main() {
  runApp(const MyShop());
}