class WebtoonModelV3_2 {
  final String id, title, thumb;

  WebtoonModelV3_2.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
