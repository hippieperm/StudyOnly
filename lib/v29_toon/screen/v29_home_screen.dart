import 'package:first_pj/v29_toon/model/v29_toon_model.dart';
import 'package:first_pj/v29_toon/service/v29_api_service.dart';
import 'package:flutter/material.dart';

class V29HomeScreen extends StatelessWidget {
  V29HomeScreen({super.key});

  Future<List<V29ToonModel>> toon = V29ApiService.getToon();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'TOON!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
      ),
      body: FutureBuilder(
        future: toon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemBuilder: (context, index) {
                
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 18,
              ),
              itemCount: snapshot.data!.length,
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
