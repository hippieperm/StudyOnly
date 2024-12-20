import 'package:first_pj/temp/webtoon_temp/v12_webtoon/models/v12_webtoon_model.dart';
import 'package:first_pj/temp/webtoon_temp/v12_webtoon/services/v12_api_service.dart';
import 'package:flutter/material.dart';

class V12HomeScreen extends StatelessWidget {
  V12HomeScreen({super.key});

  Future<List<V12WebtoonModel>> toons = V12ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: const Text(
          'TOONS!',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FutureBuilder(
        future: toons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemBuilder: (context, index) {
                print(index);
                var toon = snapshot.data![index];
                return Text(
                  '${toon.id}\n${toon.title}\n${toon.thumb}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 55,
              ),
              itemCount: snapshot.data!.length,
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
