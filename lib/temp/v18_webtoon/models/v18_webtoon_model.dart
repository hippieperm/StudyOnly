class V18WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V18WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V18WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V18WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
