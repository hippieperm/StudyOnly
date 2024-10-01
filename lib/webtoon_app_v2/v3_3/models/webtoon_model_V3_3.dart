class WebtoonModelV3_3 {
  final String id, title, thumb;

  WebtoonModelV3_3.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
