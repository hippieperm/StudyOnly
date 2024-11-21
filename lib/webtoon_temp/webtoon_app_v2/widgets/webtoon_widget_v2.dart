import 'package:flutter/material.dart';

class WebtoonWidgetV2 extends StatelessWidget {
  final String title, thumb, id;

  const WebtoonWidgetV2({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                offset: Offset(10, 10),
                color: Colors.black.withOpacity(0.5),
              )
            ]
          ),
          child: Image.network(
            thumb,
            headers: const {'referer': 'https://comic.naver.com'},
          ),
        )
      ],
    );
  }
}
