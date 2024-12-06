class V19WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V19WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });
  factory V19WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V19WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
