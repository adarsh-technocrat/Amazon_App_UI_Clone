import 'package:amazon_clone/Components/CatagoriesElements.dart';
import 'package:flutter/material.dart';

class CatagoriesSction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 85,
      color: Color(0xffFCEFBF),
      child: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        scrollDirection: Axis.horizontal,
        children: [
          CategoriesElements(
            color: Color(0xffD2F5F9),
            iconimage: "assets/mobile.png",
            title: "Mobile",
            onTap: () {},
          ),
          SizedBox(
            width: 20,
          ),
          CategoriesElements(
            color: Color(0xffF4DCE2),
            iconimage: "assets/computer.png",
            title: "Electronics",
            onTap: () {},
          ),
          SizedBox(
            width: 20,
          ),
          CategoriesElements(
            color: Color(0xffDCF9E6),
            iconimage: "assets/sofa.png",
            title: "Home",
            onTap: () {},
          ),
          SizedBox(
            width: 20,
          ),
          CategoriesElements(
              color: Color(0xffF4E7FA),
              iconimage: "assets/fridge.png",
              title: "Appliances"),
          SizedBox(
            width: 20,
          ),
          CategoriesElements(
            color: Color(0xffF6DBE6),
            iconimage: "assets/sofa.png",
            title: "Fashion",
            onTap: () {},
          ),
          SizedBox(
            width: 20,
          ),
          CategoriesElements(
            color: Color(0xffE3F1AB),
            iconimage: "assets/hand-wash.png",
            title: "Essentials",
            onTap: () {},
          ),
          SizedBox(
            width: 20,
          ),
          CategoriesElements(
            color: Color(0xffD2F5F9),
            iconimage: "assets/amazon-logo.png",
            title: "Our Brands",
            isbigimage: true,
            onTap: () {},
          ),
          SizedBox(
            width: 20,
          ),
          CategoriesElements(
            color: Color(0xffE3F1AB),
            iconimage: "assets/shopping-list.png",
            title: "Grocery",
            onTap: () {},
          ),
          SizedBox(
            width: 20,
          ),
          CategoriesElements(
            color: Color(0xffDCF9E6),
            iconimage: "assets/amazon (1).png",
            title: "Devices",
            onTap: () {},
          ),
          SizedBox(
            width: 20,
          ),
          CategoriesElements(
            color: Color(0xffD2F5F9),
            iconimage: "assets/Prime_logo.png",
            title: "Prime",
            isbigimage: true,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
