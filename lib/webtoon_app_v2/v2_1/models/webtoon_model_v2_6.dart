class WebtoonModelV2_6 {
  final String id, title, thumb;

  WebtoonModelV2_6.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
