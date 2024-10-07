class WebtoonModelV3_6 {
  final String id;
  final String title;
  final String thumb;

  WebtoonModelV3_6({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory WebtoonModelV3_6.fromJson(Map<String, dynamic> json) {
    return WebtoonModelV3_6(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
