class WebtoonModelV2_3 {
  final String id, title, thumb;

  WebtoonModelV2_3.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
