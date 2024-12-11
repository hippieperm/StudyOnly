class V20WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V20WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });
  factory V20WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V20WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
