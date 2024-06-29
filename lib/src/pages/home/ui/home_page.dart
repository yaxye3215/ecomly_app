import 'package:ecomly_app/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'widgets/category_widget.dart';
import 'widgets/slider_widget.dart';
import 'widgets/title_header_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Image.asset(
          "assets/icons/Ecomly.png",
          fit: BoxFit.cover,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Sliders
            const SlidersWidget(),
            // Category
            // category title
            const TitleHeaderWidget(
              title: "Category",
              subTitle: "See all",
            ),
            // category list
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: AppUtils.categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return CategoryWidget(
                    image: AppUtils.categories[index].image,
                    title: AppUtils.categories[index].title,
                  );
                },
              ),
            ),
            // Products
            const TitleHeaderWidget(title: "Product", subTitle: "See all"),
            Container(
              height: 250,
              width: 180,
              decoration: const BoxDecoration(),
              child: const Column(
                children: [
                  //image
                  
                  //description
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
