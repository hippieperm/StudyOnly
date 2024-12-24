class V29ToonModel {
  final String id;
  final String title;
  final String thumb;

  V29ToonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V29ToonModel.fromJson(Map<String, dynamic> json) {
    return V29ToonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
