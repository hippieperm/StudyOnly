class V23WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V23WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V23WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V23WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
