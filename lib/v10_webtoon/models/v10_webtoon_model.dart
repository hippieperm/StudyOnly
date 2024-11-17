class V10WebtoonModel {
  final String id;
  final String title;
  final String thumb;

  V10WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V10WebtoonModel.fromJson(Map<String, dynamic> json) {
    return V10WebtoonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
