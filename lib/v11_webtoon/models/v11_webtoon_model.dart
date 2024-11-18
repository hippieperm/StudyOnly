class V11WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V11WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V11WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V11WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
