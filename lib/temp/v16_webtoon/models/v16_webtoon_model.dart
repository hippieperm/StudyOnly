class V16WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V16WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V16WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V16WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
