class WebtoonModelV2_5 {
  final String id, title, thumb;

  WebtoonModelV2_5.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
