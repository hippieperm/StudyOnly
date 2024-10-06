class WebtoonModelV3_5 {
  final String id, title, thumb;

  WebtoonModelV3_5({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory WebtoonModelV3_5.fromJson(Map<String, dynamic> json) {
    return WebtoonModelV3_5(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
