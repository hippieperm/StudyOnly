class WebtoonModelV2_2 {
  final String id, title, thumb;

  WebtoonModelV2_2.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
