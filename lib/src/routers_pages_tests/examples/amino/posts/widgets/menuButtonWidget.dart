import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  void _handleMenuItem(String value) {
    print("Выбранное действие: $value");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Пример PopupMenuButton'),
      ),
      body: Center(
        child: PopupMenuButton<String>(
          onSelected: _handleMenuItem,
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem<String>(
                value: 'Редактировать',
                child: Row(
                  children: [
                    Icon(Icons.edit, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('Редактировать'),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'Удалить',
                child: Row(
                  children: [
                    Icon(Icons.delete, color: Colors.red),
                    SizedBox(width: 8),
                    Text('Удалить'),
                  ],
                ),
              ),
            ];
          },
          icon: Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 40.0,  // Увеличение размера иконки для лучшей видимости
          ),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
