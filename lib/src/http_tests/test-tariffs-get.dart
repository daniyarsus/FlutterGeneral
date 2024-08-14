import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:untitled/src/http_tests/models/tariffs-get-request.dart'; // Импортируйте модель данных

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "The test shop",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shop page"),
          backgroundColor: Colors.deepPurple,
        ),
        body: const ShopBody(),
      ),
    );
  }
}

class ShopBody extends StatefulWidget {
  const ShopBody({super.key});

  @override
  _ShopBodyState createState() => _ShopBodyState();
}

class _ShopBodyState extends State<ShopBody> {
  late Future<List<Tariff>> futureTariffs;

  @override
  void initState() {
    super.initState();
    futureTariffs = fetchTariffs();
  }

  Future<List<Tariff>> fetchTariffs() async {
    final response = await http.get(Uri.parse('https://nostudiobackforlending-production.up.railway.app/api/v1/tariff/get-all?sort_by_id=true'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((tariff) => Tariff.fromJson(tariff)).toList();
    } else {
      throw Exception('Failed to load tariffs');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Tariff>>(
      future: futureTariffs,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Tariff> tariffs = snapshot.data!;
          return ListView.builder(
            itemCount: tariffs.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  color: Colors.grey[300],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ID: ${tariffs[index].id}'),
                    Text('Price (USD): ${tariffs[index].priceInUsd}'),
                    Text('Price (KZT): ${tariffs[index].priceInKzt}'),
                    Text('Price (RUB): ${tariffs[index].priceInRub}'),
                    Text('Type: ${tariffs[index].tariffType}'),
                    Text('Info (RU): ${tariffs[index].infoInRu}'),
                    Text('Info (EN): ${tariffs[index].infoInEn}'),
                    Text('Info (KZ): ${tariffs[index].infoInKz}'),
                  ],
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
