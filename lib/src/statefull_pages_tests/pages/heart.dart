import 'package:flutter/material.dart';

void main() {
  runApp(const MyHeartExample());
}

class MyHeartExample extends StatelessWidget {
  const MyHeartExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: HeartWidget(),
        ),
      ),
    );
  }
}

class HeartWidget extends StatefulWidget {
  const HeartWidget({super.key});

  @override
  _HeartChangeState createState() => _HeartChangeState();
}

class _HeartChangeState extends State<HeartWidget> {
  bool _isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          _isFavorite ? Icons.favorite : Icons.favorite_border,
          color: _isFavorite ? Colors.red : Colors.grey,
          size: 100.0,
        ),
        ElevatedButton(
          onPressed: _toggleFavorite,
          child: const Text('Toggle Heart'),
        ),
      ],
    );
  }
}
