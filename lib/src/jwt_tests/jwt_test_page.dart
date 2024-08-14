import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JWT Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _jwtToken;

  @override
  void initState() {
    super.initState();
    _loadJwt();
  }

  Future<void> _loadJwt() async {
    final token = await getJwt();
    setState(() {
      _jwtToken = token;
    });
  }

  Future<void> _saveJwt() async {
    const token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlcm5hbWUiOiJyb290IiwiZXhwIjoxNzE5NTE0ODE5LCJ0eXBlIjoiYWNjZXNzIn0.CfWpQGW2pMEhwF1vlm8ECZDuCH2IlgQoPDYN4db3o-k';
    await saveJwt(token);
    _loadJwt();
  }

  Future<void> _removeJwt() async {
    await removeJwt();
    _loadJwt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter JWT Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_jwtToken != null)
              Text('JWT Token: $_jwtToken')
            else
              const Text('No JWT Token saved'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveJwt,
              child: const Text('Save JWT'),
            ),
            ElevatedButton(
              onPressed: _removeJwt,
              child: const Text('Remove JWT'),
            ),
          ],
        ),
      ),
    );
  }
}

// Функция для сохранения JWT
Future<void> saveJwt(String token) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('jwt_token', token);
}

// Функция для получения JWT
Future<String?> getJwt() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('jwt_token');
}

// Функция для удаления JWT
Future<void> removeJwt() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove('jwt_token');
}
