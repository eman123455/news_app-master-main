import 'package:flutter/material.dart';
import 'package:news_app/Views/news_view.dart';


void main() {
//  NewsServices(dio: Dio()).getNews();
  runApp(const NewsApp());
}

//get news

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: NewsView());
  }
}
