import 'package:first_pj/webtoon_temp/webtoon_app_v2/v3_5/models/webtoon_model_V3_5.dart';
import 'package:first_pj/webtoon_temp/webtoon_app_v2/v3_5/services/api_service_v3_5.dart';
import 'package:flutter/material.dart';

class HomeScreenV3_5 extends StatelessWidget {
  HomeScreenV3_5({super.key});

  Future<List<WebtoonModelV3_5>> webtoons = ApiServiceV3_5.getTodaysToons();

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: FutureBuilder(
          future: webtoons,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                itemBuilder: (context, index) {
                  print(index);
                  final toons = snapshot.data![index];
                  final id = toons.id;
                  final title = toons.title;
                  final thumb = toons.thumb;
                  return Text(
                    '$id / $title\n$thumb',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 30),
                itemCount: snapshot.data!.length,
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
