class V6WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V6WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V6WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V6WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
