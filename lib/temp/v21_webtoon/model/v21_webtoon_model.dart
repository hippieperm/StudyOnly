class V21WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V21WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });
  factory V21WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V21WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
