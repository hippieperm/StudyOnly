import 'package:first_pj/webtoon_app_v2/v3_4/models/webtoon_model_V3_4.dart';
import 'package:first_pj/webtoon_app_v2/v3_4/services/api_service_v3_4.dart';
import 'package:flutter/material.dart';

class HomeScreenV3_4 extends StatelessWidget {
  HomeScreenV3_4({super.key});

  Future<List<WebtoonModelV3_4>> webtoon = ApiServiceV3_4.getTodayToons();

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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: FutureBuilder(
          future: webtoon,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                itemBuilder: (context, index) {
                  print(index);
                  final toons = snapshot.data![index];
                  var title = toons.title;
                  var id = toons.id;
                  var thumb = toons.thumb;
                  return Text(
                    '$id    $title\n\n$thumb ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemCount: snapshot.data!.length,
                scrollDirection: Axis.vertical,
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
