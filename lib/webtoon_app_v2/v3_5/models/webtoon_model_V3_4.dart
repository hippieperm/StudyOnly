class WebtoonModelV3_5 {
  final String id, title, thumb;

  WebtoonModelV3_5.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
