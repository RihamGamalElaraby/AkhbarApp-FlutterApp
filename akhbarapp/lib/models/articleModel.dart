class ArticleModel {
  String? image;
  String? title;
  String? subTitle;
  // Source? source;
  ArticleModel({
    this.image,
    this.subTitle,
    this.title,
    //  this.source,
  });

  ArticleModel.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
    this.subTitle = json['description'];
    this.image = json['urlToImage'];
  }
}

// class Source {
//   String? id;
//   String? name;
//   Source({required this.id, required this.name});
// }
