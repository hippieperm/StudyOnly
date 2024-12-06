class WebtoonModelV2_1 {
  final String id, title, thumb;
  WebtoonModelV2_1.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
