class V13WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V13WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V13WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V13WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
