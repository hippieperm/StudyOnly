import 'package:first_pj/webtoon_app_v2/v3_9/models/webtoon_model_v3_9.dart';
import 'package:first_pj/webtoon_app_v2/v3_9/services/api_service_v3_9.dart';
import 'package:flutter/material.dart';

class HomeScreenV3_9 extends StatelessWidget {
  HomeScreenV3_9({super.key});

  Future<List<WebtoonModelV3_9>> toons = ApiServiceV3_9.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 97, 89, 89),
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
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                print(index);
                return null;
              },
              separatorBuilder: (context, index) => const SizedBox(height: 15),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
