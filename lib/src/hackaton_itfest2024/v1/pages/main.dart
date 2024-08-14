import 'package:flutter/material.dart';


void main() {
  runApp(const MainPage());
}


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "hackaton itfest2024",
      home: HomePage()
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void printText() {
    print(123);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal,
          ),
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.yellow,
              ),
              height: screenHeight * 0.1,
              width: screenWidth * 0.1,
              child: GestureDetector(
                onTap: printText
              ),
            )
          ],
        ),
      ),
    );
  }
}