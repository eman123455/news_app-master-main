import 'package:flutter/material.dart';
import '../Components/horzontial_Item.dart';
import '../models/category_model.dart';

class HorzontialListView extends StatelessWidget {
  const HorzontialListView({
    super.key,
  });

  final List<CategoryModel> horzontialItems = const [
     CategoryModel(
        image: "assets/business.avif", categoryName: "Business"),
     CategoryModel(
        image: "assets/entertaiment.avif", categoryName: "Entertaiment"),
     CategoryModel(image: "assets/health.avif", categoryName: "Health"),
     CategoryModel(image: "assets/science.avif", categoryName: "Science"),
     CategoryModel(image: "assets/sports.avif", categoryName: "Sports"),
     CategoryModel(image: "assets/technology.jpeg", categoryName: "Technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: horzontialItems.length,
        itemBuilder: (context, index) {
          
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: HorzontialItem(categoryModel: horzontialItems[index])
            );
        },
      ),
    );
  }
}
