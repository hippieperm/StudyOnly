import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/models/webtoon_model_v2.dart';
import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/services/api_service_v2.dart';
import 'package:flutter/material.dart';

class HomeScreenV2 extends StatelessWidget {
  HomeScreenV2({super.key});

  Future<List<WebtoonModelV2>> toons = ApiServiceV2.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Webtoon!',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
      ),
      body: FutureBuilder(
        future: toons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                print(index);
                final webtoons = snapshot.data![index];
                return Text(
                  webtoons.title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 15);
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
