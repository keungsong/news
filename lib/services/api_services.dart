import 'dart:convert';

import 'package:buyforyou/model/article_model.dart';
import 'package:http/http.dart';

class ApiServices{

  final endPointUrl = "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=139a00664f2f4814af399250769fc778";

  Future<List<Article>> getArticle() async{
    Response res = await get(endPointUrl);

    if(res.statusCode == 200){
     Map<String,dynamic> json = jsonDecode(res.body);
     List<dynamic> body = json['articles'];

     List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).toList();

     return articles;
    }else{
      throw("Can not get the Article");
    }
  }
}