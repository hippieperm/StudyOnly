class V17WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V17WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V17WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V17WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
