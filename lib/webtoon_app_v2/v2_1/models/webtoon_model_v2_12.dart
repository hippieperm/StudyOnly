class WebtoonModelV2_12 {
  final String id, title, thumb;

  WebtoonModelV2_12.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
