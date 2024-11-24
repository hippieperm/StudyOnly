import 'package:first_pj/webtoon_temp/webtoon_app_v1/models/webtoon_detail_model.dart';
import 'package:first_pj/webtoon_temp/webtoon_app_v1/models/webtoon_episode_model.dart';
import 'package:first_pj/webtoon_temp/webtoon_app_v1/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/episode_widget.dart';

class DetailScreen extends StatefulWidget {
  final String title, thumb, id;

  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<WebtoonDetailModel> webtoon;
  late Future<List<WebtoonEpisodeModel>> episodes;

  @override
  void initState() {
    super.initState();
    webtoon = ApiService.getToonById(widget.id);
    episodes = ApiService.getLatesEpisodesById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        // backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        // elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Padding(
          // padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: widget.id,
                    child: Container(
                      width: 330,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 15,
                              offset: const Offset(10, 10),
                              color: Colors.black.withOpacity(0.5),
                            )
                          ]),
                      child: Image.network(
                        widget.thumb,
                        headers: const {
                          'Referer': 'https://comic.naver.com',
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              FutureBuilder(
                future: webtoon,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          snapshot.data!.about,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          '${snapshot.data!.genre} / ${snapshot.data!.age}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    );
                  }
                  return const Text('...');
                },
              ),
              const SizedBox(
                height: 25,
              ),
              FutureBuilder(
                future: episodes,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        for (var episode in snapshot.data!.length > 10
                            ? snapshot.data!.sublist(0, 10)
                            : snapshot.data!)
                          Episode(
                            episode: episode,
                            webtoonId: widget.id,
                          )
                      ],
                    );
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
