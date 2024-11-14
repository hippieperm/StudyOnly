import 'package:first_pj/v7_webtoon/models/v7_webtoon_model.dart';
import 'package:first_pj/v7_webtoon/services/v7_api_service.dart';
import 'package:flutter/material.dart';

class V7HomeScreen extends StatelessWidget {
  V7HomeScreen({super.key});

  Future<List<V7WebtoonModel>> toon = V7ApiService.getTonns();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          "TOONS!",
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FutureBuilder(
        future: toon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                print(index);
                var toonInfo = snapshot.data![index];
                return Text(
                  '제목 : ${toonInfo.title}\n아이디 : ${toonInfo.id} 썸네일 : ${toonInfo.thumb}',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 44),
            );
          }
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.yellow.withOpacity(0.8),
              color: Colors.red.withOpacity(0.8),
            ),
          );
        },
      ),
    );
  }
}
