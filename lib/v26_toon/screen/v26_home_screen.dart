import 'package:first_pj/v26_toon/model/v26_toon_model.dart';
import 'package:first_pj/v26_toon/service/v26_api_service.dart';
import 'package:flutter/material.dart';

class V26HomeScreen extends StatelessWidget {
  V26HomeScreen({super.key});

  Future<List<V26ToonModel>> toon = V26ApiService.getToon();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'TOON!!!',
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
                    '${toonInfo.id}\n${toonInfo.title}\n${toonInfo.thumb}');
              },
              separatorBuilder: (context, index) => const SizedBox(height: 18),
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
