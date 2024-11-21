class V12WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V12WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V12WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V12WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
