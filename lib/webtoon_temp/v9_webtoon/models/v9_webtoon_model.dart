class V9WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V9WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V9WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V9WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
