class WebtoonModelV2_11 {
  final String id, title, thumb;
  WebtoonModelV2_11.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
