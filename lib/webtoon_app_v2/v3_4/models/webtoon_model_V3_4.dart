class WebtoonModelV3_4 {
  final String id, title, thumb;

  WebtoonModelV3_4.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
