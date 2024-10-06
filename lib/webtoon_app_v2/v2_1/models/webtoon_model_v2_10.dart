class WebtoonModelV2_10 {
  final String id, title, thumb;

  WebtoonModelV2_10.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
