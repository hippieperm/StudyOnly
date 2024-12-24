class V30ToonModel {
  final String id;
  final String title;
  final String thumb;

  V30ToonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V30ToonModel.fromJson(Map<String, dynamic> json) {
    return V30ToonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
