import 'package:first_pj/webtoon_app_v2/v3_2/models/webtoon_model_V3_2.dart';
import 'package:first_pj/webtoon_app_v2/v3_2/services/api_service_v3_2.dart';
import 'package:flutter/material.dart';

class HomeScreenV3_2 extends StatelessWidget {
  HomeScreenV3_2({super.key});

  final Future<List<WebtoonModelV3_2>> webToons =
      ApiServiceV3_2.getToonsToday();

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
        future: webToons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  print(index);
                  final toons = snapshot.data![index];
                  return Text(
                    toons.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(width: 20),
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
