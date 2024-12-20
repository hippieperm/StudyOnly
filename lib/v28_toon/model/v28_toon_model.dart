class V28ToonModel {
  final String id;
  final String title;
  final String thumb;

  V28ToonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V28ToonModel.fromJson(Map<String, dynamic> json) {
    return V28ToonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
