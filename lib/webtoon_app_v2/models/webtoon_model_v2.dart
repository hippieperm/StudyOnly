class WebtoonModelV2 {
  final String title, thumb, id;

  WebtoonModelV2.formJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
        //생성자임 WebtoonModelV2.이름(인스턴스가 있는 생성자 json으로 받아옴
}
