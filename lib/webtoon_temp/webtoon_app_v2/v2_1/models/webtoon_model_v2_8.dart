class WebtoonModelV2_8 {
  final String id, title, thumb;
  WebtoonModelV2_8.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
