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
    IconData iconData;
    Color iconColor;

    if (_isFavorite) {
      iconData = Icons.favorite;
      iconColor = Colors.red;
    } else {
      iconData = Icons.favorite_border;
      iconColor = Colors.grey;
    }

    return Container(
      alignment: Alignment.center,
      child: IconButton(
        icon: Icon(
          iconData,
          color: iconColor,
          size: 100.0,
        ),
        onPressed: _toggleFavorite,
      ),
    );
  }
}
