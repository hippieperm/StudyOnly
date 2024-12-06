class WebtoonModelV3_9 {
  final String id;
  final String title;
  final String thumb;

  WebtoonModelV3_9({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory WebtoonModelV3_9.fromJson(Map<String, dynamic> json) {
    return WebtoonModelV3_9(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
