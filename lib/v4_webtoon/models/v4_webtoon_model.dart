class V4WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V4WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V4WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V4WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
