import 'package:flutter/material.dart';
import 'package:news_app/Components/Horzontial_List_View.dart';
import 'package:news_app/Components/VerticalListViewBuilder.dart';

class NewsView extends StatelessWidget {
  NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text.rich(TextSpan(
          children: [
            const TextSpan(
                text: "News",
                style:  TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 26)),
            const TextSpan(
                text: "Cloud",
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.w700,
                    fontSize: 26))
          ],
        )),
      ),
      body:Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
          const SliverToBoxAdapter(child:  HorzontialListView()),
           const SliverToBoxAdapter(
                child:  SizedBox(
              height: 30,
            )),
             Verticallistviewbuilder(category: 'general',),
            
          ],
        ),
        // child: const Column(children: [
        //   const HorzontialListView(),
        //   SizedBox(height: 32,),
        //   const Expanded(child: const VerticalListView()),
        // ]
        // ),
      ),
    );
  }
}


