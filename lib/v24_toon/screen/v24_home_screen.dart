import 'package:first_pj/v24_toon/model/v24_toon_model.dart';
import 'package:first_pj/v24_toon/service/v24_api_service.dart';
import 'package:flutter/material.dart';

class V24HomeScreen extends StatelessWidget {
  V24HomeScreen({super.key});

  Future<List<V24ToonModel>> toons = V24ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'TOON!',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder(
        future: toons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {}
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
