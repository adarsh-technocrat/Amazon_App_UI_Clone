import 'package:amazon_clone/Screens/HomeScreen/CatagoriesSection.dart';
import 'package:amazon_clone/Screens/HomeScreen/DiscountDealCard.dart';
import 'package:amazon_clone/Screens/HomeScreen/TeendingSection.dart';
import 'package:flutter/material.dart';
import '../../Components/ColorsElement.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: ColorsElement.gradient,
          ),
        ),
        leading: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
            SizedBox(
              width: 30,
            ),
            Image.asset(
              "assets/amazon-logo.png",
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                ".in",
                style: TextStyle(color: Colors.grey[800]),
              ),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.keyboard_voice,
            color: Colors.black,
            size: 25,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
            size: 25,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          BuildSearchSection(),
          BuildLocationSection(),
          SliverList(
            delegate: SliverChildListDelegate(
              [CatagoriesSction(), TrendingSection(), DiscountDealCard()],
            ),
          )
        ],
      ),
    );
  }
}

class BuildSearchSection extends StatelessWidget {
  const BuildSearchSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 60,
      floating: false,
      flexibleSpace: BuildHeaderSection(),
    );
  }
}

class BuildLocationSection extends StatefulWidget {
  const BuildLocationSection({
    Key key,
  }) : super(key: key);

  @override
  _BuildLocationSectionState createState() => _BuildLocationSectionState();
}

class _BuildLocationSectionState extends State<BuildLocationSection> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        floating: true,
        backgroundColor: Color(0xffFCEFBF),
        flexibleSpace: GestureDetector(
          onTap: () async {
            buildShowModalBottomSheet(context);
            await Future.delayed(Duration(seconds: 1));
            Navigator.pop(context);
            await Future.delayed(Duration(milliseconds: 500));
            buildShowModalAddressBottomSheet(context);
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            decoration: BoxDecoration(
              gradient: ColorsElement.gradient,
            ),
            child: Column(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                color: Color(0xff7CCECE),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.location_pin,
                        color: Colors.black,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Deliver to Adarsh - Ahmednagar 41002",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ));
  }

  Future buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              height: 80,
              child: Center(
                child: CircularProgressIndicator(),
              ));
        });
  }

  Future buildShowModalAddressBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    height: 20,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Choose your location",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Select a delivery locarion to see procuce availability\nand delivery options",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 145,
                            decoration: BoxDecoration(
                                color: Color(0xffFCF8F2),
                                border: Border.all(
                                  color: Color(0xffE69B4A),
                                )),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Adarsh Kumar Singh",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, bottom: 8),
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel lobortis urna.",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 4,
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 145,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.black,
                            )),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Adarsh Kumar Singh",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, bottom: 8),
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel lobortis urna.",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 4,
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 145,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.black,
                            )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Text(
                                    "Add an address or",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color(0xff4482BC),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Text(
                                    "pick-up point",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color(0xff4482BC),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xff4482BC),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Enter a pincode",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xff4482BC),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.my_location,
                          color: Color(0xff4482BC),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Use my current location",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xff4482BC),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ));
        });
  }
}

class BuildHeaderSection extends StatelessWidget {
  const BuildHeaderSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorsElement.gradient,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            height: 43,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Color(0xffB1BFC1), width: 1),
              boxShadow: [
                BoxShadow(
                    color: Color(
                      0xffA1BDC2,
                    ),
                    blurRadius: 2.0,
                    offset: Offset(-3, 3))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 25,
                    color: Color(0xff070707),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(color: Color(0xff838383), fontSize: 20),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    width: 10,
                    endIndent: 2,
                    indent: 2,
                  ),
                  Icon(
                    Icons.photo_camera,
                    color: Color(0xff838383),
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
