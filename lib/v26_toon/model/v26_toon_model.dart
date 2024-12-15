class V26ToonModel {
  final String id;
  final String title;
  final String thumb;

  V26ToonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V26ToonModel.fromJson(Map<String, dynamic> json) {
    return V26ToonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
