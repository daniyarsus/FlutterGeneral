import 'package:flutter/material.dart';

class StatefullNavBarPage extends StatefulWidget {
  const StatefullNavBarPage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<StatefullNavBarPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Text(
        "Followers posts",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
      ),
    ),
    Center(
      child: Text(
        "Main page",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
      ),
    ),
    Center(
      child: Text(
        "My profile",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amino page"),
        backgroundColor: Colors.green,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Followers"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Main"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Me"
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        onTap: _onItemTapped,
      ),
    );
  }
}

class AminoApp extends StatelessWidget {
  const AminoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Amino application",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StatefullNavBarPage(),
    );
  }
}

void main() {
  runApp(AminoApp());
}

