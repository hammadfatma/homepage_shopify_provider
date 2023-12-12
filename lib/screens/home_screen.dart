import 'package:flutter/material.dart';
import 'package:homepage_shopify_provider/widgets/carousel_slider_widget.dart';
import 'package:homepage_shopify_provider/widgets/categories_circle_widget.dart';

import '../widgets/icon_badge_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconBadgeWidget(
            txt: '5',
            con: Icons.maps_ugc_outlined,
            fl: true,
          ),
          IconBadgeWidget(
            txt: '10',
            con: Icons.notifications_none_outlined,
            fl: false,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(
                      0xff515c6f,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  CategoriesCircleWidget(
                    backColor: [Color(0xffffae4e), Color(0xffff7676)],
                    shadowColor: Color.fromARGB(34, 255, 98, 98),
                    imagePath: 'assets/images/clothes.png',
                    txt: 'Apparel',
                  ),
                  CategoriesCircleWidget(
                    backColor: [Color(0xff4efff8), Color(0xff76baff)],
                    shadowColor: Color.fromARGB(34, 98, 170, 255),
                    imagePath: 'assets/images/beauty.png',
                    txt: 'Beauty',
                  ),
                  CategoriesCircleWidget(
                    backColor: [Color(0xffb4ff4e), Color(0xff2fc145)],
                    shadowColor: Color.fromARGB(34, 38, 213, 85),
                    imagePath: 'assets/images/shoes.png',
                    txt: 'Shoes',
                  ),
                  CategoriesCircleWidget(
                    backColor: [Color(0xffffffff), Color(0xffffffff)],
                    shadowColor: Color(0xffe7eaf0),
                    widgetIcon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                      color: Color(
                        0xffff6969,
                      ),
                    ),
                    txt: 'See All',
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Latest',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(
                      0xff515c6f,
                    ),
                  ),
                ),
              ),
              CarouselSliderWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
