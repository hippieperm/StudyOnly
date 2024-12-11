import 'package:first_pj/v22_webtoon/model/v22_webtoon_model.dart';
import 'package:first_pj/v22_webtoon/service/v22_api_service.dart';
import 'package:flutter/material.dart';

class V22HomeScreen extends StatelessWidget {
  V22HomeScreen({super.key});

  Future<List<V22WebtoonModel>> toons = V22ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'TOON!',
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
                  '${toonInfo.id}\n${toonInfo.title}\n${toonInfo.thumb}',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
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
