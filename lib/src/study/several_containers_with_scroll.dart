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
        appBar: AppBar(title: const Text('Scrollable Containers Example')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  // Handle the home tap here
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  // Handle the settings tap here
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildContainer(Colors.blue, 'Container 1'),
              _buildContainer(Colors.green, 'Container 2'),
              _buildContainer(Colors.red, 'Container 3'),
              _buildContainer(Colors.black, 'Container 4'),
              _buildContainer(Colors.deepPurpleAccent, 'Container 5'),
              _buildContainer(Colors.red, 'Container 3'),
              _buildContainer(Colors.black, 'Container 4'),
              _buildContainer(Colors.deepPurpleAccent, 'Container 5'),
              _buildContainer(Colors.red, 'Container 3'),
              _buildContainer(Colors.black, 'Container 4'),
              _buildContainer(Colors.deepPurpleAccent, 'Container 5'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer(Color color, String text) {
    return Container(
      color: color,
      height: 100,
      width: double.infinity,
      child: Center(child: Text(text)),
    );
  }
}
