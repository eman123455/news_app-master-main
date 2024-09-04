import 'package:flutter/material.dart';
import 'package:news_app/Components/VerticalListViewBuilder.dart';
import 'package:news_app/Components/Vertical_List_View.dart';

class Horzontialcategoryview extends StatelessWidget {
  const Horzontialcategoryview({super.key,required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView
      (slivers:[
        Verticallistviewbuilder(
          category: category,
          )
      ] ),
    );
  }
}
