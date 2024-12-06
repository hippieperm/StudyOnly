import 'package:first_pj/temp/v14_webtoon/models/v14_webtoon_model.dart';
import 'package:first_pj/temp/v14_webtoon/services/v14_api_service.dart';
import 'package:flutter/material.dart';

class V14HomeScreen extends StatelessWidget {
  V14HomeScreen({super.key});

  Future<List<V14WebtoonModel>> toons = V14ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'TOOOOON!!!!',
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
                  '${toonInfo.title}${toonInfo.id}\n${toonInfo.thumb}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 66,
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
