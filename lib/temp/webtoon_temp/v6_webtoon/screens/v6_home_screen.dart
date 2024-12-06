import 'package:first_pj/temp/webtoon_temp/v3_webtoon_app/models/webtoon_model.dart';
import 'package:first_pj/temp/webtoon_temp/v6_webtoon/models/v6_webtoon_model.dart';
import 'package:first_pj/temp/webtoon_temp/v6_webtoon/services/v6_api_service.dart';
import 'package:flutter/material.dart';

class V6HomeScreeen extends StatelessWidget {
  V6HomeScreeen({super.key});

  Future<List<V6WebtoonModel>> webtoons = V6ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'Toons TODAY!',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white.withOpacity(0.9)),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                V6WebtoonModel toon = snapshot.data![index];
                print(index);
                return Text(
                  '제목 : ${toon.title}\n 웹툰아이디: ${toon.id} 썸네일링크 : ${toon.thumb}',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 44),
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.yellow,
              color: Colors.red,
              strokeAlign: 7,
            ),
          );
        },
      ),
    );
  }
}
