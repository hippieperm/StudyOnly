class V31ToonModel {
  final String id;
  final String title;
  final String thumb;

  V31ToonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });

  factory V31ToonModel.fromJson(Map<String, dynamic> json) {
    return V31ToonModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
    );
  }
}
