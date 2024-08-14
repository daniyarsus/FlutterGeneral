import 'package:flutter/material.dart';

class HeartWidget extends StatefulWidget {
  const HeartWidget({Key? key}) : super(key: key);

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
      iconColor = Colors.black;
    }

    return Container(
      child: IconButton(
        icon: Icon(
          iconData,
          color: iconColor,
          size: 44.0,
        ),
        onPressed: _toggleFavorite,
      ),
    );
  }
}
