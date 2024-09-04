// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/Components/vertical_item.dart';
// import 'package:news_app/Services/news_services.dart';
// import '../models/artical_model.dart';

// class VerticalListView extends StatefulWidget {
//   const VerticalListView({super.key});

//   @override
//   State<VerticalListView> createState() => _VerticalListViewState();
// }

// class _VerticalListViewState extends State<VerticalListView> {
//   List<ArticalModel> verticalItems = [];
//   bool isLoading = false;
//   @override
//   void initState() {
//     super.initState();

//     getGeneralNews();
//   }
//   // extract method instead of change initstate method to async , we didn't need to make async as we didn't need to wait to contiue to rest of code

//   Future<void> getGeneralNews() async {
//     verticalItems = await NewsServices(dio: Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading==true ?SliverToBoxAdapter(child:Center(child: CircularProgressIndicator())):
//      SliverList(
//         delegate: SliverChildBuilderDelegate(
//          (context, index) {
//         return Padding(
//           padding: const EdgeInsets.only(bottom: 10),
//           child: VerticalItem(verticalModel: verticalItems[index]),
//         );
//       },
//       childCount: verticalItems.length,
//     ));
//   }
// }












// // class VerticalListView extends StatelessWidget {
// // const VerticalListView({
// // super.key,
// // });
// // final List<ArticalModel> verticalItems = const [
// // ArticalModel(
// // imagePath: "assets/image.jpeg",
// // Title: "Large Title should be places in this place ,Large Title should be places in this place sssss"
// // , description: "and here is the description of the news you can place your Desc here"),
// // ArticalModel(
// // imagePath: "assets/image.jpeg",
// // Title: "Large Title should be places in this place ,Large Title should be places in this place sssss"
// // , description: "and here is the description of the news you can place your Desc here"),
// // ArticalModel(
// // imagePath: "assets/image.jpeg",
// // Title: "Large Title should be places in this place ,Large Title should be places in this place sssss"
// // , description: "and here is the description of the news you can place your Desc here"),
// // ArticalModel(
// // imagePath: "assets/image.jpeg",
// // Title: "Large Title should be places in this place ,Large Title should be places in this place sssss"
// // , description: "and here is the description of the news you can place your Desc here"),
// // ArticalModel(
// // imagePath: "assets/image.jpeg",
// // Title: "Large Title should be places in this place ,Large Title should be places in this place sssss"
// // , description: "and here is the description of the news you can place your Desc here"),
// // ArticalModel(
// // imagePath: "assets/image.jpeg",
// // Title: "Large Title should be places in this place ,Large Title should be places in this place sssss"
// // , description: "and here is the description of the news you can place your Desc here"),
// // ArticalModel(
// // imagePath: "assets/image.jpeg",
// // Title: "Large Title should be places in this place ,Large Title should be places in this place sssss"
// // , description: "and here is the description of the news you can place your Desc here"),
// // ];

// // //List of maps
// //   // final  List<ArticalModel>  verticalModel=NewsServices(dio: Dio()).getNews();

// // @override
// // Widget build(BuildContext context) {
// // return SliverList(
// // delegate: SliverChildBuilderDelegate(

// //   (context ,index){

// //     return Padding(
// //       padding: const EdgeInsets.only(bottom:10),
// //       child: VerticalItem(verticalModel:verticalItems[index]),
// //     );
// //   },
// //    childCount:verticalItems.length,

// //   )

// //   );
// // }
// // }