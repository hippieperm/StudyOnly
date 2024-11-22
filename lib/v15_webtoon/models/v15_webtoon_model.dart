class V15WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V15WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V15WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V15WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
