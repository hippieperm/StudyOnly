class V8WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V8WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V8WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V8WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
