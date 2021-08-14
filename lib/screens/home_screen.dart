import 'package:buyforyou/components/custom_list_tile.dart';
import 'package:buyforyou/model/article_model.dart';
import 'package:buyforyou/services/api_services.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  ApiServices client = ApiServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy For U'),
      ),
      body:FutureBuilder(
        future:client.getArticle(),
        builder:(BuildContext context, AsyncSnapshot<List<Article>> snapshot){

          if(snapshot.hasData){
            List<Article> articles = snapshot.data;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context,index)=>
             customListTile(articles[index]),
            );
          }
          return Center(
            child:CircularProgressIndicator(),
          );
        }
      )
    );
  }
}
