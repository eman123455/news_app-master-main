import 'package:flutter/material.dart';
import 'package:news_app/Components/vertical_item.dart';
import '../models/artical_model.dart';

class VerticalListView extends StatelessWidget {
  List<ArticalModel> verticalItems;
  VerticalListView({super.key,required this.verticalItems});
  @override

  // extract method instead of change initstate method to async , we didn't need to make async as we didn't need to wait to contiue to rest of code

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: verticalItems.length,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: VerticalItem(verticalModel: verticalItems[index]),
        );
      },
    )
    );
  }
}












// class VerticalListView extends StatelessWidget {
// const VerticalListView({
// super.key,
// });
// final List<ArticalModel> verticalItems = const [
// ArticalModel(
// imagePath: "assets/image.jpeg",
// Title: "Large Title should be places in this place ,Large Title should be places in this place sssss"
// , description: "and here is the description of the news you can place your Desc here"),
// ArticalModel(
// imagePath: "assets/image.jpeg",
// Title: "Large Title should be places in this place ,Large Title should be places in this place sssss"
// , description: "and here is the description of the news you can place your Desc here"),
// ArticalModel(
// imagePath: "assets/image.jpeg",
// Title: "Large Title should be places in this place ,Large Title should be places in this place sssss"
// , description: "and here is the description of the news you can place your Desc here"),
// ArticalModel(
// imagePath: "assets/image.jpeg",
// Title: "Large Title should be places in this place ,Large Title should be places in this place sssss"
// , description: "and here is the description of the news you can place your Desc here"),
// ArticalModel(
// imagePath: "assets/image.jpeg",
// Title: "Large Title should be places in this place ,Large Title should be places in this place sssss"
// , description: "and here is the description of the news you can place your Desc here"),
// ArticalModel(
// imagePath: "assets/image.jpeg",
// Title: "Large Title should be places in this place ,Large Title should be places in this place sssss"
// , description: "and here is the description of the news you can place your Desc here"),
// ArticalModel(
// imagePath: "assets/image.jpeg",
// Title: "Large Title should be places in this place ,Large Title should be places in this place sssss"
// , description: "and here is the description of the news you can place your Desc here"),
// ];

// //List of maps
//   // final  List<ArticalModel>  verticalModel=NewsServices(dio: Dio()).getNews();

// @override
// Widget build(BuildContext context) {
// return SliverList(
// delegate: SliverChildBuilderDelegate(

//   (context ,index){

//     return Padding(
//       padding: const EdgeInsets.only(bottom:10),
//       child: VerticalItem(verticalModel:verticalItems[index]),
//     );
//   },
//    childCount:verticalItems.length,

//   )

//   );
// }
// }