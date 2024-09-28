import 'package:first_pj/webtoon_app_v2/v2_1/models/webtoon_model_v2_14.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/models/webtoon_model_v2_16.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_14.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_15.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_16.dart';
import 'package:flutter/material.dart';

import '../models/webtoon_model_v2_15.dart';

class HomeScreenV2_1 extends StatelessWidget {
  HomeScreenV2_1({super.key});

  Future<List<WebtoonModelV2_16>> toons = ApiServiceV2_16.getTodayToons();

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
            return const Center(
              child: Text(
                'HasData',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            );
          }
          return const Center(
            child: Text(
              '...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60,
              ),
            ),
          );
        },
      ),
    );
  }
}
