class WebtoonModelV2_16 {
  final String id, title, thumb;

  WebtoonModelV2_16.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
