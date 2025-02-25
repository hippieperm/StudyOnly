import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_14.dart';
import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_16.dart';
import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_17.dart';
import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/services/api_service_v2_14.dart';
import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/services/api_service_v2_15.dart';
import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/services/api_service_v2_16.dart';
import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/services/api_service_v2_17.dart';
import 'package:flutter/material.dart';

import '../models/webtoon_model_v2_15.dart';

class HomeScreenV2_1 extends StatelessWidget {
  HomeScreenV2_1({super.key});

  Future<List<WebtoonModelV2_17>> toons = ApiServiceV2_17.getTodayToon();

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
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                print(index);
                final webtoons = snapshot.data![index];
                return Text(
                  webtoons.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 10);
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
