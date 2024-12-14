class V25WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V25WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V25WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V25WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
