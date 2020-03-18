class Book {
  final String title;
  final String img;
  final String url;
  final String source;

  Book({this.title, this.img, this.url, this.source});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['title'],
      img: json['img'],
      url: json['url'],
      source: json['source'],
    );
  }
  
}