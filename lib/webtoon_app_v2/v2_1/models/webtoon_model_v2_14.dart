class WebtoonModelV2_14 {
  final String id, title, thumb;

  WebtoonModelV2_14.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
