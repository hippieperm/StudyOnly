class WebtoonModelV3_1 {
  final String id, title, thumb;

  WebtoonModelV3_1.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
