class V27WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V27WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V27WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V27WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
