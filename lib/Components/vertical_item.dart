import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class VerticalItem extends StatelessWidget {
const VerticalItem({super.key, required this.verticalModel});

  final  ArticalModel  verticalModel; 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: CachedNetworkImage(
           imageUrl:verticalModel.imagePath!,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          
          )
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          verticalModel.title??'',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Text(
          verticalModel.description??'',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Color(0xffC2C2C2)),
        ),
      ],
    );
  }
}