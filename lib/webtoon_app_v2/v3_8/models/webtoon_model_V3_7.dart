class WebtoonModelV3_8 {
  final String id;
  final String title;
  final String thumb;

  WebtoonModelV3_8({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory WebtoonModelV3_8.fromJson(Map<String, dynamic> json) {
    return WebtoonModelV3_8(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
