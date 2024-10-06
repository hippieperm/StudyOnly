class WebtoonModelV2_15 {
  final String id, title, thumb;

  WebtoonModelV2_15.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
