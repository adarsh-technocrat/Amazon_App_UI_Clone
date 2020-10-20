import 'package:flutter/material.dart';

class SubmenueSection extends StatelessWidget {
  final bool isRewards;
  final bool isRewardcolor;
  final String iconimage;
  final String title;
  final bool isbigimage;
  final Function onTap;
  final bool isbanner;
  final bool isnotImage;
  final String bannertitle;

  SubmenueSection(
      {this.isRewards = false,
      this.isnotImage = false,
      this.iconimage,
      @required this.title,
      this.bannertitle,
      this.isRewardcolor = false,
      this.isbanner = false,
      this.onTap,
      this.isbigimage = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Color(
                      //   0xffEEC761,
                      // ),
                      image: new DecorationImage(
                        image: new AssetImage("assets/goldsheet.PNG"),
                        fit: BoxFit.fill,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isRewards ? Color(0xffB20824) : Colors.white),
                      child: Center(
                          child: isnotImage
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "\u20B9 500",
                                      style: TextStyle(
                                          color: Colors.yellowAccent,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      "Shopping",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 6,
                                          fontWeight: FontWeight.w900),
                                    )
                                  ],
                                )
                              : isbigimage
                                  ? Image.asset(
                                      iconimage,
                                      height: 35,
                                      // color: Colors.black,
                                    )
                                  : Image.asset(
                                      iconimage,
                                      height: 20,
                                    )),
                    ),
                  ),
                ),
                isbanner
                    ? Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Container(
                          height: 12,
                          width: 33,
                          decoration: BoxDecoration(
                              color: isRewardcolor
                                  ? Color(0xff8F6C00)
                                  : Color(0xffDA5900),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              bannertitle,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.black, fontSize: 11, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
