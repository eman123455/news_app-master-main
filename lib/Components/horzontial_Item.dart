import 'package:flutter/material.dart';
import 'package:news_app/Components/horzontialCategoryView.dart';
import 'package:news_app/models/category_model.dart';

class HorzontialItem extends StatelessWidget {
  HorzontialItem({required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Horzontialcategoryview(category: categoryModel.categoryName,);
        }
        ,),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        height: 200,
        width: 300,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image(
                image: AssetImage(categoryModel.image),
                fit: BoxFit.fill,
                height: 200,
                width: 300,
              ),
            ),
            Center(
              child: Text(
                categoryModel.categoryName,
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
