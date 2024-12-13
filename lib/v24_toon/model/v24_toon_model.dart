class V24ToonModel {
  final String id;
  final String title;
  final String thumb;

  V24ToonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V24ToonModel.fromJson(Map<String, dynamic> json) {
    return V24ToonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
