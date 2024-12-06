import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v3_1/models/webtoon_model_V3_1.dart';
import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v3_1/services/api_service_v3_1.dart';
import 'package:flutter/material.dart';

class HomeScreenV3_1 extends StatelessWidget {
  HomeScreenV3_1({super.key});

  Future<List<WebtoonModelV3_1>> webtoons = ApiServiceV3_1.getTodayToon();

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
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                print(index);
                final toons = snapshot.data![index];
                return Text(
                  toons.title,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 20);
              },
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
