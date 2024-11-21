class V14WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V14WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V14WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V14WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
