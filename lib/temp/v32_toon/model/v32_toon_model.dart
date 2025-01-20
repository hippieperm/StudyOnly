class V32ToonModel {
  final String id;
  final String title;
  final String thumb;

  V32ToonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V32ToonModel.fromJson(Map<String, dynamic> json) {
    return V32ToonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
