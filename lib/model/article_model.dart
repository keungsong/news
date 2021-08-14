import 'package:buyforyou/model/source_model.dart';
import 'package:flutter/foundation.dart';

class Article {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;


// create constructor
  Article({
    this.source,
    this.author,
    this.content,
    this.title,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.description,

  
  });
  // create the function that will map the json into a list
    factory Article.fromJson(Map<String,dynamic>json){
      return Article(
        author: json['author'] as String,
      source: Source.fromJson(json['source']),
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
      publishedAt: json['publishedAt'] as String,
      content: json['content'] as String);
    }
}
