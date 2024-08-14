import 'package:flutter/material.dart';


void main() {
  runApp(const MyHeartEx());
}


class MyHeartEx extends StatelessWidget {
  const MyHeartEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                child: NewHeartWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewHeartWidget extends StatefulWidget {
  const NewHeartWidget({super.key});

  @override
  _HeartChangeState createState() => _HeartChangeState();
}

class _HeartChangeState extends State<NewHeartWidget> {
  bool _isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: IconButton(
        icon: Icon(
          _isFavorite ? Icons.favorite : Icons.favorite_border,
          color: _isFavorite ? Colors.red : Colors.grey,
          size: 100.0,
        ),
        onPressed: _toggleFavorite,
      ),
    );
  }
}