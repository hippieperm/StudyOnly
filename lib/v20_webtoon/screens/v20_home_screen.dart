import 'package:first_pj/temp/v19_webtoon/models/v19_webtoon_model.dart';
import 'package:first_pj/temp/v19_webtoon/services/v19_api_service.dart';
import 'package:flutter/material.dart';

class V20HomeScreen extends StatelessWidget {
  V20HomeScreen({super.key});

  Future<List<V19WebtoonModel>> toons = V19ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'TOONSNSNS',
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
                var toonInfo = snapshot.data![index];
                return Text(
                  '${toonInfo.title}\n${toonInfo.id}\n${toonInfo.thumb}',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 24,
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
