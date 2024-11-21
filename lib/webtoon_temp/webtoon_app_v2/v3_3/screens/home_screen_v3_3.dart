import 'package:first_pj/webtoon_temp/webtoon_app_v2/v3_3/models/webtoon_model_V3_3.dart';
import 'package:first_pj/webtoon_temp/webtoon_app_v2/v3_3/services/api_service_v3_3.dart';
import 'package:flutter/material.dart';

class HomeScreenV3_3 extends StatelessWidget {
  HomeScreenV3_3({super.key});

  Future<List<WebtoonModelV3_3>> webtoon = ApiServiceV3_3.getTodayToons();

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
        future: webtoon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data!.length,
              // scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                print(index);
                final toons = snapshot.data![index];
                return Text(
                  toons.thumb,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 30,
                height: 30,
              ),
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
