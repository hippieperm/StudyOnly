
import 'package:first_pj/v32_toon/service/v32_api_service.dart';
import 'package:flutter/material.dart';

class V32HomeScreen extends StatelessWidget {
  V32HomeScreen({super.key});

  Future<List<V32HomeScreen>> toon = V32ApiService.getToon();

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
            color: Colors.white.withOpacity(0.8),
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
                var ttt = snapshot.data![index];

                return Text(
                  '${ttt.id}\n${ttt.title}\n${ttt.thumb}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
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
