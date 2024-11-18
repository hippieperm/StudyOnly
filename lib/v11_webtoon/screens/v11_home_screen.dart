import 'package:first_pj/v11_webtoon/models/v11_webtoon_model.dart';
import 'package:first_pj/v11_webtoon/services/v11_api_service.dart';
import 'package:flutter/material.dart';

class V11HomeScreen extends StatelessWidget {
  V11HomeScreen({super.key});

  Future<List<V11WebtoonModel>> toon = V11ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'TOON!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(0.9),
          ),
        ),
      ),
      body: FutureBuilder(
        future: toon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemBuilder: (context, index) {
                print(index);
                var toonInfo = snapshot.data![index];
                return Text(
                  '${toonInfo.title}${toonInfo.id}\n${toonInfo.thumb}',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 24,
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
