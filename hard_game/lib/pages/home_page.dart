import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // temp stuff for testing
  Future<List<Map<String, dynamic>>> loadCards() async {
    final String jsonString = await rootBundle.loadString('assets/data.json');
    final Map<String, dynamic> data = jsonDecode(jsonString);

    List<Map<String, dynamic>> cardDataList = data['cards'];
    return cardDataList;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadCards(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data[0]['description']);
          } else {
            return const SizedBox.shrink();
          }
        });
  }
}
