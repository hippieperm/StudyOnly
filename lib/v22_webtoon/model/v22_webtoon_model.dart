class V22WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V22WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V22WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V22WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
