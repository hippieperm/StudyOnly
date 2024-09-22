class WebtoonModelV2_4 {
  final String id, title, thumb;
  WebtoonModelV2_4.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
