import 'package:first_pj/temp/v16_webtoon/models/v16_webtoon_model.dart';
import 'package:first_pj/temp/v16_webtoon/services/v16_api_service.dart';
import 'package:flutter/material.dart';

class V16HomeScreen extends StatelessWidget {
  V16HomeScreen({super.key});

  Future<List<V16WebtoonModel>> toons = V16ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'TOooOOoooN!',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 24,
            fontWeight: FontWeight.bold,
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
                var toonsInfo = snapshot.data![index];

                return Text(
                  '${toonsInfo.id}\n${toonsInfo.title}\n${toonsInfo.thumb}',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 60,
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
