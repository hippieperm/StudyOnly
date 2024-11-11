class V5WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V5WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V5WebtoonModel.formJson(Map<String, dynamic> json) {
    return V5WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
