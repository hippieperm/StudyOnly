class WebtoonModelV2_13 {
  final String id, title, thumb;

  WebtoonModelV2_13.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
