class WebtoonModelV2_9 {
  final String id, title, thumb;

  WebtoonModelV2_9.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
