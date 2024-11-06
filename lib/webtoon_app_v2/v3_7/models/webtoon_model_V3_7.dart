class WebtoonModelV3_7 {
  final String id;
  final String title;
  final String thumb;

  WebtoonModelV3_7({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory WebtoonModelV3_7.fromJson(Map<String, dynamic> json) {
    return WebtoonModelV3_7(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
