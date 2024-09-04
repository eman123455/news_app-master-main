import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Components/Vertical_List_View.dart';
import 'package:news_app/Services/news_services.dart';
import 'package:news_app/models/artical_model.dart';

class Verticallistviewbuilder extends StatefulWidget {
  const Verticallistviewbuilder({super.key, required this.category});
   final String category;
  @override
  State<Verticallistviewbuilder> createState() => _VerticallistviewbuilderState();
}

class _VerticallistviewbuilderState extends State<Verticallistviewbuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future= NewsServices(
      dio: Dio(),).getNews(
          category: widget.category,
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return VerticalListView(verticalItems: snapshot.data! as List<ArticalModel>);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text("ops! there was an error, try later "),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}


















  //   List<ArticalModel> newsItems = [];
  // bool isLoading = false;
  // @override
  // void initState() {
  //   super.initState();

  //   getGeneralNews();
  // }
  // extract method instead of change initstate method to async , we didn't need to make async as we didn't need to wait to contiue to rest of code

  // Future<void> getGeneralNews() async {
  //   newsItems = await NewsServices(dio: Dio()).getNews();
  //   isLoading = false;
  //   setState(() {});
  // }
