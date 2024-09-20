import 'package:first_pj/webtoon_app_v2/models/webtoon_model_v2.dart';
import 'package:first_pj/webtoon_app_v2/services/api_service_v2.dart';
import 'package:flutter/material.dart';

class HomeScreenV2 extends StatelessWidget {
  HomeScreenV2({super.key});
  final Future<List<WebtoonModelV2>> webtoons = ApiServiceV2.getTodaysToons();
  // ApiServiceV2.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Webtoon!',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    var webtoon = snapshot.data![index];
                    print(webtoon.title);
                    return null;
                  },
                  // separatorBuilder: (context, index) => const SizedBox(
                  //   width: 30,
                  // ),
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 30,
                    );
                  },
                  itemCount: snapshot.data!.length,
                )
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(
              color: Colors.white.withOpacity(0.8),
            ),
          );
        },
      ),
    );
  }
}
