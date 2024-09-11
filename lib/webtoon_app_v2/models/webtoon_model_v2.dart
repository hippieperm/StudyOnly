class WebtoonModelV2 {
  final String title, thumb, id;

  WebtoonModelV2.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
