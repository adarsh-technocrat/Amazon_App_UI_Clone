import 'package:amazon_clone/Components/titleSectiion.dart';
import 'package:flutter/material.dart';

class DiscountDealCard extends StatefulWidget {
  @override
  _DiscountDealCardState createState() => _DiscountDealCardState();
}

class _DiscountDealCardState extends State<DiscountDealCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.43,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg.jpg"),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Color(0xffE9CC76), BlendMode.darken))),
      child: Column(
        children: [
          TitleSrction(
            title: "Great offers on Readmi phones",
            subtitle: "Up to 20% off + 12 months No Cost EMI",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 470,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/phoneDiscountimg/ph1.jpeg",
                                height: 160,
                              ),
                            ),
                            Text(
                              "Extra up to \u20B9 1,000 off\n on exchange",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/phoneDiscountimg/ph2.jpeg",
                                height: 160,
                              ),
                            ),
                            Text(
                              "Festival offer: flat \u20B9 1,000 \noff",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/phoneDiscountimg/ph1.jpeg",
                                height: 160,
                              ),
                            ),
                            Text(
                              "Extra up to \u20B9 1,000 off\n on exchange",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/phoneDiscountimg/ph2.jpeg",
                                height: 160,
                              ),
                            ),
                            Text(
                              "Festival offer: flat \u20B9 1,000 \noff",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[400],
                    height: 20,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "See all offers",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
