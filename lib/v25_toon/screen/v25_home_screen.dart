import 'package:first_pj/v25_toon/model/v25_webtoon_model.dart';
import 'package:first_pj/v25_toon/service/v25_api_service.dart';
import 'package:flutter/material.dart';

class V25HomeScreen extends StatelessWidget {
  V25HomeScreen({super.key});

  Future<List<V25WebtoonModel>> toons = V25ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: const Text(
          'TOON!',
          style: TextStyle(
            color: Colors.white,
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
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 18,
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
