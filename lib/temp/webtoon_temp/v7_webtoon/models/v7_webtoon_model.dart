class V7WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V7WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V7WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V7WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
