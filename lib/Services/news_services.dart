import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;
import 'package:news_app/models/artical_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices({required this.dio});

  Future<List<ArticalModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=dd2db549665343169d3009e3056228a5');
          

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData[
          "articles"]; //List of maps , if we use it , we need to determine key inside list view

      // List<ArticalModel> articalObject = [];

      // for (var article in articles) {
      //   ArticalModel articalModel = ArticalModel(
      //       imagePath: article["urlToImage"],
      //       title: article['title'],
      //       description: article['description']);

      //   articalObject.add(articalModel);
      // }

      List<ArticalModel> articalObject =
          articles.map((e) => ArticalModel.fromJson(e)).toList();

      return articalObject;
    } catch (e) {
      return [];
    }
  }
}
