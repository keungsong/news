import 'package:buyforyou/model/article_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customListTile(Article article){
  return Container(
    margin:EdgeInsets.all(12.0),
    padding:EdgeInsets.all(8.0),
    decoration:BoxDecoration(color: Colors.white,
    borderRadius: BorderRadius.circular(18.0),
    boxShadow: [
      BoxShadow(
        color:Colors.black12,
        blurRadius:3.0,
      )
    ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Container(
          decoration: BoxDecoration(
            image:DecorationImage(image: NetworkImage(article.urlToImage),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        SizedBox(height:8),
        Container(
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(30),
          color: Colors.red,

          ),
          child: Text(article.source.name),
        ),
        SizedBox(height:8),
        Text(article.title,
        style:TextStyle(fontWeight: FontWeight.bold,
        fontSize:16))
      ]
    ),
  );
}