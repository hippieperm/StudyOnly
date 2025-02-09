import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v3_6/models/webtoon_model_V3_6.dart';
import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v3_6/services/api_service_v3_6.dart';
import 'package:flutter/material.dart';

class HomeScreenV3_6 extends StatelessWidget {
  const HomeScreenV3_6({super.key});

  static Future<List<WebtoonModelV3_6>> toons = ApiServiceV3_6.getTodayToon();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Today\'s TOONs',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
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
                print(index);
                var toon = snapshot.data![index];
                return Text(
                  '${toon.title} (ID: ${toon.id}) ${toon.thumb}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.8),
                  ),
                );
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
