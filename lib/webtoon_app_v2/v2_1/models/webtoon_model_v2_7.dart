class WebtoonModelV2_7 {
  final String id, title, thumb;

  WebtoonModelV2_7.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
