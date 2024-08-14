import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MenuButton(),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  void _handleMenuItem(String value) {
    print("Выбранное действие: $value");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Пример PopupMenuButton'),
      ),
      body: Center(
        child: PopupMenuButton<String>(
          onSelected: _handleMenuItem,
          itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem<String>(
                value: 'Редактировать',
                child: Row(
                  children: [
                    Icon(Icons.edit, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('Редактировать'),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
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
          icon: const Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 44.0,
          ),
          color: Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
