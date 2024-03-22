class ArticleModel {
  String? image;
  String? title;
  String? subTitle;
  Source? source;
  ArticleModel({this.image, this.subTitle, this.title, this.source});
}

class Source {
  String? id;
  String? name;
  Source({required this.id, required this.name});
}
