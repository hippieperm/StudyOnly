class WebtoonModelV2_17 {
  final String id, title, thumb;

  WebtoonModelV2_17.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
