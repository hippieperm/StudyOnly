import 'package:first_pj/v4_webtoon/models/v4_webtoon_model.dart';
import 'package:first_pj/v4_webtoon/services/v4_api_service.dart';
import 'package:flutter/material.dart';

class V4HomeScreen extends StatelessWidget {
  V4HomeScreen({super.key});

  Future<List<V4WebtoonModel>> toons = V4ApiService.getTodayToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'Today\'s Toons',
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder(
        future: toons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemBuilder: (context, index) {
                var toon = snapshot.data![index];
                
                return;
              },
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemCount: snapshot.data!.length,
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
