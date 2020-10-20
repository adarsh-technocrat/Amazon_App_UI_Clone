import 'package:amazon_clone/Components/titleSectiion.dart';
import 'package:amazon_clone/Screens/HomeScreen/SubMenuSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class TrendingSection extends StatelessWidget {
  final List<String> images = [
    "assets/swipperImage/GreateImdianFest.jpg",
    "assets/swipperImage/deal5.gif",
    "assets/swipperImage/unnamed.jpg",
    "assets/swipperImage/Header-coupon-PC-shop-now_01.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.89,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg.jpg"),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Color(0xffE9CC76), BlendMode.darken))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              color: Colors.white,
              child: Swiper(
                itemCount: 4,
                autoplay: true,
                itemBuilder: (_, int index) {
                  return new Image.asset(
                    images[index],
                    fit: BoxFit.fill,
                  );
                },
                pagination: new SwiperPagination(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: Colors.white,
              child: Image.asset(
                "assets/swipperImage/V260226683-_Jupiter2020_Teaser_Xiaomi_Family_LP_PC_04.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SubMenuSection(),
        ],
      ),
    );
  }
}
